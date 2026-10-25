require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71082 = class("Quest71082", QuestActorProxy)
Quest71082.defaultAlias = "Quest71082"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71082:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71082:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7108201"] = self.OnSubStart7108201, ["7108202"] = self.OnSubStart7108202}
end

function Quest71082:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7108201"] = self.OnSubFinish7108201, ["7108202"] = self.OnSubFinish7108202}
end

function Quest71082:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71082:Start()
    print("Start")
end

function Quest71082:OnDestroy()
    print("OnDestroy")
end

function Quest71082:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71082:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71082:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71082:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71082:OnSubStart7108201(arg1)
    print("OnSubStart7108201")
    self:CreateQuestNpc(arg1, npcs.Npc20552Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20552Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest71082:OnSubFinish7108201(arg1)
    print("OnSubFinish7108201")
end

function Quest71082:OnSubStart7108202(arg1)
    print("OnSubStart7108202")
    self:CreateQuestNpc(arg1, npcs.Npc20553Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20553Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20552Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20552Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
end

function Quest71082:OnSubFinish7108202(arg1)
    print("OnSubFinish7108202")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20553Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20552Data.alias)
end

return Quest71082
