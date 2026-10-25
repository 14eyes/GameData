require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23029 = class("Quest23029", QuestActorProxy)
Quest23029.defaultAlias = "Quest23029"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302901"] = self.OnSubStart2302901,
        ["2302902"] = self.OnSubStart2302902,
        ["2302903"] = self.OnSubStart2302903,
        ["2302904"] = self.OnSubStart2302904
    }
end

function Quest23029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302901"] = self.OnSubFinish2302901,
        ["2302902"] = self.OnSubFinish2302902,
        ["2302903"] = self.OnSubFinish2302903,
        ["2302904"] = self.OnSubFinish2302904
    }
end

function Quest23029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23029:Start()
    print("Start")
end

function Quest23029:OnDestroy()
    print("OnDestroy")
end

function Quest23029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23029:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4178Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12690Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2302902Trigger", 3, false)
end

function Quest23029:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23029:OnSubStart2302901(arg1)
    print("OnSubStart2302901")
    self:CreateQuestNpc(arg1, npcs.Npc4178Data.id, 1)
end

function Quest23029:OnSubFinish2302901(arg1)
    print("OnSubFinish2302901")
end

function Quest23029:OnSubStart2302902(arg1)
    print("OnSubStart2302902")
    actorMgr:CreateActorWithPos("Q2302902Trigger", "Actor/Gadget/Q2302902Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302902_guide").pos, sceneData:GetDummyPoint(3, "Q2302902_guide").rot, true, false, 3)
end

function Quest23029:OnSubFinish2302902(arg1)
    print("OnSubFinish2302902")
end

function Quest23029:OnSubStart2302903(arg1)
    print("OnSubStart2302903")
    self:CreateQuestNpc(arg1, npcs.Npc12690Data.id, 1)
end

function Quest23029:OnSubFinish2302903(arg1)
    print("OnSubFinish2302903")
    self:SafeDestroyQuestNpc(npcs.Npc12690Data.alias, 3)
end

function Quest23029:OnSubStart2302904(arg1)
    print("OnSubStart2302904")
end

function Quest23029:OnSubFinish2302904(arg1)
    print("OnSubFinish2302904")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4178Data.alias)
end

return Quest23029
