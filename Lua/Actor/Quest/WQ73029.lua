require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73029 = class("Quest73029", QuestActorProxy)
Quest73029.defaultAlias = "Quest73029"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302905"] = self.OnSubStart7302905,
        ["7302901"] = self.OnSubStart7302901,
        ["7302903"] = self.OnSubStart7302903,
        ["7302902"] = self.OnSubStart7302902,
        ["7302904"] = self.OnSubStart7302904
    }
end

function Quest73029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302905"] = self.OnSubFinish7302905,
        ["7302901"] = self.OnSubFinish7302901,
        ["7302903"] = self.OnSubFinish7302903,
        ["7302902"] = self.OnSubFinish7302902,
        ["7302904"] = self.OnSubFinish7302904
    }
end

function Quest73029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73029:Start()
    print("Start")
end

function Quest73029:OnDestroy()
    print("OnDestroy")
end

function Quest73029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73029:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20909Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7302901Trigger", 3, false)
end

function Quest73029:OnSubStart7302905(arg1)
    print("OnSubStart7302905")
end

function Quest73029:OnSubFinish7302905(arg1)
    print("OnSubFinish7302905")
end

function Quest73029:OnSubStart7302901(arg1)
    print("OnSubStart7302901")
end

function Quest73029:OnSubFinish7302901(arg1)
    print("OnSubFinish7302901")
end

function Quest73029:OnSubStart7302903(arg1)
    print("OnSubStart7302903")
    self:CreateQuestNpc(arg1, npcs.Npc20909Data.id, 1)
    actorMgr:CreateActorWithPos("Q7302901Trigger", "Actor/Gadget/Q7302901Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302901_N20600").pos, sceneData:GetDummyPoint(3, "Q7302901_N20600").rot, true, false, 3)
end

function Quest73029:OnSubFinish7302903(arg1)
    print("OnSubFinish7302903")
    self:SafeDestroyQuestNpc(npcs.Npc20909Data.alias, 3)
end

function Quest73029:OnSubStart7302902(arg1)
    print("OnSubStart7302902")
end

function Quest73029:OnSubFinish7302902(arg1)
    print("OnSubFinish7302902")
end

function Quest73029:OnSubStart7302904(arg1)
    print("OnSubStart7302904")
end

function Quest73029:OnSubFinish7302904(arg1)
    print("OnSubFinish7302904")
end

return Quest73029
