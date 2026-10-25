require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71039 = class("Quest71039", QuestActorProxy)
Quest71039.defaultAlias = "Quest71039"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71039:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7103901"] = self.OnSubStart7103901,
        ["7103902"] = self.OnSubStart7103902,
        ["7103903"] = self.OnSubStart7103903
    }
end

function Quest71039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7103901"] = self.OnSubFinish7103901,
        ["7103902"] = self.OnSubFinish7103902,
        ["7103903"] = self.OnSubFinish7103903
    }
end

function Quest71039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71039:Start()
    print("Start")
end

function Quest71039:OnDestroy()
    print("OnDestroy")
end

function Quest71039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71039:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71039:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71039:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71039:OnSubStart7103901(arg1)
    print("OnSubStart7103901")
    self:CreateQuestNpc(arg1, npcs.Npc20523Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20523Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest71039:OnSubFinish7103901(arg1)
    print("OnSubFinish7103901")
    self:CreateQuestNpc(arg1, npcs.Npc2616Data.id, 1)
    self:NpcDestroy(npcs.Npc20523Data.alias, 6)
end

function Quest71039:OnSubStart7103902(arg1)
    print("OnSubStart7103902")
    self:NpcDestroy(npcs.Npc20523Data.alias, 6)
end

function Quest71039:OnSubFinish7103902(arg1)
    print("OnSubFinish7103902")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc2616Data.alias)
end

function Quest71039:OnSubStart7103903(arg1)
    print("OnSubStart7103903")
end

function Quest71039:OnSubFinish7103903(arg1)
    print("OnSubFinish7103903")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2061Data.alias)
end

return Quest71039
