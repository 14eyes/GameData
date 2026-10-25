require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22044 = class("Quest22044", QuestActorProxy)
Quest22044.defaultAlias = "Quest22044"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22044:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204401"] = self.OnSubStart2204401,
        ["2204402"] = self.OnSubStart2204402,
        ["2204403"] = self.OnSubStart2204403
    }
end

function Quest22044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204401"] = self.OnSubFinish2204401,
        ["2204402"] = self.OnSubFinish2204402,
        ["2204403"] = self.OnSubFinish2204403
    }
end

function Quest22044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204401"] = self.OnSubFailed2204401,
        ["2204402"] = self.OnSubFailed2204402,
        ["2204403"] = self.OnSubFailed2204403
    }
end

function Quest22044:Start()
    print("Start")
end

function Quest22044:OnDestroy()
    print("OnDestroy")
end

function Quest22044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22044:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20388Data.alias, 3)
end

function Quest22044:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22044:OnSubStart2204401(arg1)
    print("OnSubStart2204401")
    self:CreateQuestNpc(arg1, npcs.Npc20388Data.id, 1)
end

function Quest22044:OnSubFinish2204401(arg1)
    print("OnSubFinish2204401")
end

function Quest22044:OnSubFailed2204401(arg1)
    print("OnSubFailed2204401")
end

function Quest22044:OnSubStart2204402(arg1)
    print("OnSubStart2204402")
end

function Quest22044:OnSubFinish2204402(arg1)
    print("OnSubFinish2204402")
end

function Quest22044:OnSubFailed2204402(arg1)
    print("OnSubFailed2204402")
end

function Quest22044:OnSubStart2204403(arg1)
    print("OnSubStart2204403")
end

function Quest22044:OnSubFinish2204403(arg1)
    print("OnSubFinish2204403")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20388Data.alias)
end

function Quest22044:OnSubFailed2204403(arg1)
    print("OnSubFailed2204403")
end

return Quest22044
