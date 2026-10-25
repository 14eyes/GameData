require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22050 = class("Quest22050", QuestActorProxy)
Quest22050.defaultAlias = "Quest22050"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22050:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2205001"] = self.OnSubStart2205001,
        ["2205002"] = self.OnSubStart2205002,
        ["2205003"] = self.OnSubStart2205003,
        ["2205004"] = self.OnSubStart2205004,
        ["2205005"] = self.OnSubStart2205005,
        ["2205006"] = self.OnSubStart2205006,
        ["2205007"] = self.OnSubStart2205007
    }
end

function Quest22050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2205001"] = self.OnSubFinish2205001,
        ["2205002"] = self.OnSubFinish2205002,
        ["2205003"] = self.OnSubFinish2205003,
        ["2205004"] = self.OnSubFinish2205004,
        ["2205005"] = self.OnSubFinish2205005,
        ["2205006"] = self.OnSubFinish2205006,
        ["2205007"] = self.OnSubFinish2205007
    }
end

function Quest22050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2205001"] = self.OnSubFailed2205001,
        ["2205002"] = self.OnSubFailed2205002,
        ["2205003"] = self.OnSubFailed2205003,
        ["2205004"] = self.OnSubFailed2205004,
        ["2205005"] = self.OnSubFailed2205005,
        ["2205006"] = self.OnSubFailed2205006,
        ["2205007"] = self.OnSubFailed2205007
    }
end

function Quest22050:Start()
    print("Start")
end

function Quest22050:OnDestroy()
    print("OnDestroy")
end

function Quest22050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22050:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest22050:OnSubStart2205001(arg1)
    print("OnSubStart2205001")
    self:CreateQuestNpc(arg1, npcs.Npc3189Data.id, 1)
end

function Quest22050:OnSubFinish2205001(arg1)
    print("OnSubFinish2205001")
    self:SafeDestroyQuestNpc(npcs.Npc3189Data.alias, 3)
end

function Quest22050:OnSubFailed2205001(arg1)
    print("OnSubFailed2205001")
end

function Quest22050:OnSubStart2205002(arg1)
    print("OnSubStart2205002")
    actorMgr:CreateActorWithPos("Q2205002Trigger", "Actor/Gadget/Q2205002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2205002Cat").pos, {x = 0, y = 0, z = 0}, true, false)
end

function Quest22050:OnSubFinish2205002(arg1)
    print("OnSubFinish2205002")
    self:SafeDestroyQuestNpc(npcs.Npc3189Data.alias, 3)
end

function Quest22050:OnSubFailed2205002(arg1)
    print("OnSubFailed2205002")
end

function Quest22050:OnSubStart2205003(arg1)
    print("OnSubStart2205003")
    actorMgr:CreateActorWithPos("Q2205003Trigger", "Actor/Gadget/Q2205003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2205003Cat").pos, {x = 0, y = 0, z = 0}, true, false)
end

function Quest22050:OnSubFinish2205003(arg1)
    print("OnSubFinish2205003")
    self:SafeDestroyQuestNpc(npcs.Npc3189Data.alias, 3)
end

function Quest22050:OnSubFailed2205003(arg1)
    print("OnSubFailed2205003")
end

function Quest22050:OnSubStart2205004(arg1)
    print("OnSubStart2205004")
end

function Quest22050:OnSubFinish2205004(arg1)
    print("OnSubFinish2205004")
end

function Quest22050:OnSubFailed2205004(arg1)
    print("OnSubFailed2205004")
end

function Quest22050:OnSubStart2205005(arg1)
    print("OnSubStart2205005")
end

function Quest22050:OnSubFinish2205005(arg1)
    print("OnSubFinish2205005")
end

function Quest22050:OnSubFailed2205005(arg1)
    print("OnSubFailed2205005")
end

function Quest22050:OnSubStart2205006(arg1)
    print("OnSubStart2205006")
end

function Quest22050:OnSubFinish2205006(arg1)
    print("OnSubFinish2205006")
    self:SafeDestroyQuestNpc(npcs.Npc3189Data.alias, 3)
end

function Quest22050:OnSubFailed2205006(arg1)
    print("OnSubFailed2205006")
end

function Quest22050:OnSubStart2205007(arg1)
    print("OnSubStart2205007")
end

function Quest22050:OnSubFinish2205007(arg1)
    print("OnSubFinish2205007")
    self:SafeDestroyQuestNpc(npcs.Npc3189Data.alias, 3)
end

function Quest22050:OnSubFailed2205007(arg1)
    print("OnSubFailed2205007")
end

return Quest22050
