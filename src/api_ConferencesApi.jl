# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct ConferencesApi <: SwaggerApi
    client::Swagger.Client
end

"""
Conferences
Get conference list
Return: Vector{Conference}
"""
function getConferences(_api::ConferencesApi; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Vector{Conference}, "/conferences", [])
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

export getConferences