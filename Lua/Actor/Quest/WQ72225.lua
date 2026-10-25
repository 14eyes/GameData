require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72225 = class("Quest72225", QuestActorProxy)
Quest72225.defaultAlias = "Quest72225"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72225:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72225:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7222501"] = self.OnSubStart7222501,
        ["7222506"] = self.OnSubStart7222506,
        ["7222507"] = self.OnSubStart7222507,
        ["7222502"] = self.OnSubStart7222502,
        ["7222503"] = self.OnSubStart7222503,
        ["7222504"] = self.OnSubStart7222504,
        ["7222505"] = self.OnSubStart7222505
    }
end

function Quest72225:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7222501"] = self.OnSubFinish7222501,
        ["7222506"] = self.OnSubFinish7222506,
        ["7222507"] = self.OnSubFinish7222507,
        ["7222502"] = self.OnSubFinish7222502,
        ["7222503"] = self.OnSubFinish7222503,
        ["7222504"] = self.OnSubFinish7222504,
        ["7222505"] = self.OnSubFinish7222505
    }
end

function Quest72225:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7222501"] = self.OnSubFailed7222501,
        ["7222506"] = self.OnSubFailed7222506,
        ["7222507"] = self.OnSubFailed7222507,
        ["7222502"] = self.OnSubFailed7222502,
        ["7222503"] = self.OnSubFailed7222503,
        ["7222504"] = self.OnSubFailed7222504,
        ["7222505"] = self.OnSubFailed7222505
    }
end

function Quest72225:Start()
    print("Start")
end

function Quest72225:OnDestroy()
    print("OnDestroy")
end

function Quest72225:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72225:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72225:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72225:OnSubStart7222501(arg1)
    print("OnSubStart7222501")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20449Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20449Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q72225Trigger", "Actor/Gadget/Q72225Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72167_shendian").pos, sceneData:GetDummyPoint(3, "72167_shendian").rot, true, false, 3)
end

function Quest72225:OnSubFinish7222501(arg1)
    print("OnSubFinish7222501")
end

function Quest72225:OnSubFailed7222501(arg1)
    print("OnSubFailed7222501")
end

function Quest72225:OnSubStart7222506(arg1)
    print("OnSubStart7222506")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20449Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest72225:OnSubFinish7222506(arg1)
    print("OnSubFinish7222506")
end

function Quest72225:OnSubFailed7222506(arg1)
    print("OnSubFailed7222506")
end

function Quest72225:OnSubStart7222507(arg1)
    print("OnSubStart7222507")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20449Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
    self:PlayCutsceneIndex("7222507", function(arg1)
        arg1:FinishQuestID(false, 7222507)
    end, nil, nil, false)
end

function Quest72225:OnSubFinish7222507(arg1)
    print("OnSubFinish7222507")
end

function Quest72225:OnSubFailed7222507(arg1)
    print("OnSubFailed7222507")
end

function Quest72225:OnSubStart7222502(arg1)
    print("OnSubStart7222502")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20449Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest72225:OnSubFinish7222502(arg1)
    print("OnSubFinish7222502")
end

function Quest72225:OnSubFailed7222502(arg1)
    print("OnSubFailed7222502")
end

function Quest72225:OnSubStart7222503(arg1)
    print("OnSubStart7222503")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20449Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
    self:PlayCutsceneIndex("7222503", function(arg1)
        arg1:FinishQuestID(false, 7222503)
    end, nil, nil, false)
end

function Quest72225:OnSubFinish7222503(arg1)
    print("OnSubFinish7222503")
end

function Quest72225:OnSubFailed7222503(arg1)
    print("OnSubFailed7222503")
end

function Quest72225:OnSubStart7222504(arg1)
    print("OnSubStart7222504")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20449Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20449Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest72225:OnSubFinish7222504(arg1)
    print("OnSubFinish7222504")
end

function Quest72225:OnSubFailed7222504(arg1)
    print("OnSubFailed7222504")
end

function Quest72225:OnSubStart7222505(arg1)
    print("OnSubStart7222505")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20449Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20449Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
    self:RequestInteraction(npcs.Npc20320Data.alias)
end

function Quest72225:OnSubFinish7222505(arg1)
    print("OnSubFinish7222505")
    actorMgr:CreateActorWithPos("Q7222505Trigger1", "Actor/Gadget/Q7222505Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "72167_shendian").pos, sceneData:GetDummyPoint(3, "72167_shendian").rot, true, false, 3)
end

function Quest72225:OnSubFailed7222505(arg1)
    print("OnSubFailed7222505")
end

return Quest72225
