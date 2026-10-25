require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest90001 = class("Quest90001", QuestActorProxy)
Quest90001.defaultAlias = "Quest90001"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest90001:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest90001:OnSubStartHandlerBuild()
    self.subStartHandlers = {["9000101"] = self.OnSubStart9000101}
end

function Quest90001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["9000101"] = self.OnSubFinish9000101}
end

function Quest90001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["9000101"] = self.OnSubFailed9000101}
end

function Quest90001:Start()
    print("Start")
end

function Quest90001:OnDestroy()
    print("OnDestroy")
end

function Quest90001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest90001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest90001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest90001:FunctionTest(arg1, arg2)
    self:SpawnChest(123, {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, arg1, 0, 0, false)
    return {output = true, output1 = ""}
end

function Quest90001:OnSubStart9000101(arg1)
    print("OnSubStart9000101")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
end

function Quest90001:OnSubFinish9000101(arg1)
    print("OnSubFinish9000101")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest90001:OnSubFailed9000101(arg1)
    print("OnSubFailed9000101")
end

return Quest90001
