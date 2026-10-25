require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73068 = class("Quest73068", QuestActorProxy)
Quest73068.defaultAlias = "Quest73068"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73068:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73068:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306801"] = self.OnSubStart7306801,
        ["7306802"] = self.OnSubStart7306802,
        ["7306803"] = self.OnSubStart7306803,
        ["7306804"] = self.OnSubStart7306804,
        ["7306807"] = self.OnSubStart7306807,
        ["7306805"] = self.OnSubStart7306805,
        ["7306806"] = self.OnSubStart7306806
    }
end

function Quest73068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306801"] = self.OnSubFinish7306801,
        ["7306802"] = self.OnSubFinish7306802,
        ["7306803"] = self.OnSubFinish7306803,
        ["7306804"] = self.OnSubFinish7306804,
        ["7306807"] = self.OnSubFinish7306807,
        ["7306805"] = self.OnSubFinish7306805,
        ["7306806"] = self.OnSubFinish7306806
    }
end

function Quest73068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73068:Start()
    print("Start")
end

function Quest73068:OnDestroy()
    print("OnDestroy")
end

function Quest73068:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73068:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73068:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20607Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20816Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    actorMgr:DestroyEntityActor("Q73068Trigger_CutsceneAfterTalk", 3, false)
    actorMgr:DestroyEntityActor("Q73068Trigger_CutsceneStart", 3, false)
end

function Quest73068:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73068:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73068:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 7306807)
    end
end

function Quest73068:OnSubStart7306801(arg1)
    print("OnSubStart7306801")
    self:NpcCreate(arg1, npcs.Npc20816Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20816Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73068:OnSubFinish7306801(arg1)
    print("OnSubFinish7306801")
end

function Quest73068:OnSubStart7306802(arg1)
    print("OnSubStart7306802")
    self:GetQuestNpcActor(npcs.Npc20816Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73068:OnSubFinish7306802(arg1)
    print("OnSubFinish7306802")
end

function Quest73068:OnSubStart7306803(arg1)
    print("OnSubStart7306803")
    self:NpcCreate(arg1, npcs.Npc20607Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc20816Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20816Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73068:OnSubFinish7306803(arg1)
    print("OnSubFinish7306803")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20607Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20816Data.alias)
end

function Quest73068:OnSubStart7306804(arg1)
    print("OnSubStart7306804")
    self:NpcCreate(arg1, npcs.Npc20607Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc20816Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20816Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73068:OnSubFinish7306804(arg1)
    print("OnSubFinish7306804")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20607Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20816Data.alias)
end

function Quest73068:OnSubStart7306807(arg1)
    print("OnSubStart7306807")
end

function Quest73068:OnSubFinish7306807(arg1)
    print("OnSubFinish7306807")
end

function Quest73068:OnSubStart7306805(arg1)
    print("OnSubStart7306805")
end

function Quest73068:OnSubFinish7306805(arg1)
    print("OnSubFinish7306805")
end

function Quest73068:OnSubStart7306806(arg1)
    print("OnSubStart7306806")
end

function Quest73068:OnSubFinish7306806(arg1)
    print("OnSubFinish7306806")
end

return Quest73068
