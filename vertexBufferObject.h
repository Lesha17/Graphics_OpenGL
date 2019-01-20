#pragma once

#ifndef C_VERTEX_BUFFER_OBJECT
#define C_VERTEX_BUFFER_OBJECT

// Wraps OpenGL vertex buffer object.
class CVertexBufferObject
{
public:
	void CreateVBO(int a_iSize = 0);
	void DeleteVBO();

	void* MapBufferToMemory(int iUsageHint);
	void* MapSubBufferToMemory(int iUsageHint, uint uiOffset, uint uiLength);
	void UnmapBuffer();

	void BindVBO(int a_iBufferType = GL_ARRAY_BUFFER);
	void UploadDataToGPU(int iUsageHint);
	
	void AddData(void* ptrData, uint uiDataSize);

	void* GetDataPointer();
	uint GetBufferID();

	CVertexBufferObject();

private:
	uint uiBuffer;
	int iSize;
	int iBufferType;
	vector<unsigned char> data;

	bool bDataUploaded;
};

#endif