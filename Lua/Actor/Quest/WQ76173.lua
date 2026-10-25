require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76173 = class("Quest76173", QuestActorProxy)
Quest76173.defaultAlias = "Quest76173"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest76173:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest76173:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7617301"] = self.OnSubStart7617301,
        ["7617302"] = self.OnSubStart7617302,
        ["7617303"] = self.OnSubStart7617303
    }
end

function Quest76173:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7617301"] = self.OnSubFinish7617301,
        ["7617302"] = self.OnSubFinish7617302,
        ["7617303"] = self.OnSubFinish7617303
    }
end

function Quest76173:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7617302"] = self.OnSubFailed7617302, ["7617303"] = self.OnSubFailed7617303}
end

function Quest76173:Start()
    print("Start")
end

function Quest76173:OnDestroy()
    print("OnDestroy")
end

function Quest76173:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76173:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76173:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76173:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76173:PlayerEnterDungeonWithDataAndSceneID(currSceneID, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if currSceneID ~= sceneData.currSceneID then
        this:PlayerEnterDungeonWithData(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    end
end

function Quest76173:OnSubStart7617301(arg1)
    print("OnSubStart7617301")
end

function Quest76173:OnSubFinish7617301(arg1)
    print("OnSubFinish7617301")
    this:PlayerEnterDungeonWithDataAndSceneID(20347, 1977, 1014, 7617301, 1, datas.TransmitData, nil, nil)
end

function Quest76173:OnSubStart7617302(arg1)
    print("OnSubStart7617302")
end

function Quest76173:OnSubFinish7617302(arg1)
    print("OnSubFinish7617302")
end

function Quest76173:OnSubFailed7617302(arg1)
    print("OnSubFailed7617302")
    this:RecycleAllRes()
end

function Quest76173:OnSubStart7617303(arg1)
    print("OnSubStart7617303")
end

function Quest76173:OnSubFinish7617303(arg1)
    print("OnSubFinish7617303")
end

function Quest76173:OnSubFailed7617303(arg1)
    print("OnSubFailed7617303")
    this:RecycleAllRes()
end

return Quest76173
