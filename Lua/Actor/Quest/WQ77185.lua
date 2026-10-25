require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77185 = class("Quest77185", QuestActorProxy)
Quest77185.defaultAlias = "Quest77185"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77185:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77185:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7718508"] = self.OnSubStart7718508,
        ["7718501"] = self.OnSubStart7718501,
        ["7718502"] = self.OnSubStart7718502,
        ["7718503"] = self.OnSubStart7718503,
        ["7718504"] = self.OnSubStart7718504,
        ["7718505"] = self.OnSubStart7718505,
        ["7718506"] = self.OnSubStart7718506,
        ["7718507"] = self.OnSubStart7718507
    }
end

function Quest77185:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7718508"] = self.OnSubFinish7718508,
        ["7718501"] = self.OnSubFinish7718501,
        ["7718502"] = self.OnSubFinish7718502,
        ["7718503"] = self.OnSubFinish7718503,
        ["7718504"] = self.OnSubFinish7718504,
        ["7718505"] = self.OnSubFinish7718505,
        ["7718506"] = self.OnSubFinish7718506,
        ["7718507"] = self.OnSubFinish7718507
    }
end

function Quest77185:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7718502"] = self.OnSubFailed7718502,
        ["7718504"] = self.OnSubFailed7718504,
        ["7718506"] = self.OnSubFailed7718506
    }
end

function Quest77185:Start()
    print("Start")
end

function Quest77185:OnDestroy()
    print("OnDestroy")
end

function Quest77185:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77185:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77185:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77185:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7718508Trigger", 77185)
end

function Quest77185:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77185:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77185:OnSubStart7718508(arg1)
    print("OnSubStart7718508")
    actorMgr:CreateActorWithPos("Q7718508Trigger", "Actor/Gadget/Q7718508Trigger", 70900002, 0, points._Q7718508TriggerPoint_.pos, points._Q7718508TriggerPoint_.rot, true, false, 3, nil, 0, 77185)
end

function Quest77185:OnSubFinish7718508(arg1)
    print("OnSubFinish7718508")
    this:CreateQuestNpc(arg1, npcs.Npc7350_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7350_2.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7350_3.id, 0, false, 0)
end

function Quest77185:OnSubStart7718501(arg1)
    print("OnSubStart7718501")
    this:GetQuestNpcActor(npcs.Npc7350_1.alias, 77185):DoFreeStyle(1122, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_2.alias, 77185):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_3.alias, 77185):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest77185:OnSubFinish7718501(arg1)
    print("OnSubFinish7718501")
end

function Quest77185:OnSubStart7718502(arg1)
    print("OnSubStart7718502")
    this:GetQuestNpcActor(npcs.Npc7350_1.alias, 77185):DoFreeStyle(1122, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_2.alias, 77185):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_3.alias, 77185):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest77185:OnSubFinish7718502(arg1)
    print("OnSubFinish7718502")
end

function Quest77185:OnSubFailed7718502(arg1)
    print("OnSubFailed7718502")
    this:RecycleAllRes()
    this:ShowBlackScreenWithDialogText(0, 3, 0.5, nil, nil, nil, 771859901, false, true)
end

function Quest77185:OnSubStart7718503(arg1)
    print("OnSubStart7718503")
    this:GetQuestNpcActor(npcs.Npc7350_1.alias, 77185):DoFreeStyle(1122, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_2.alias, 77185):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_3.alias, 77185):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest77185:OnSubFinish7718503(arg1)
    print("OnSubFinish7718503")
end

function Quest77185:OnSubStart7718504(arg1)
    print("OnSubStart7718504")
    this:GetQuestNpcActor(npcs.Npc7350_1.alias, 77185):DoFreeStyle(1122, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_2.alias, 77185):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_3.alias, 77185):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest77185:OnSubFinish7718504(arg1)
    print("OnSubFinish7718504")
end

function Quest77185:OnSubFailed7718504(arg1)
    print("OnSubFailed7718504")
    this:RecycleAllRes()
    this:ShowBlackScreenWithDialogText(0, 3, 0.5, nil, nil, nil, 771859901, false, true)
end

function Quest77185:OnSubStart7718505(arg1)
    print("OnSubStart7718505")
    this:GetQuestNpcActor(npcs.Npc7350_1.alias, 77185):DoFreeStyle(1122, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_2.alias, 77185):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_3.alias, 77185):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest77185:OnSubFinish7718505(arg1)
    print("OnSubFinish7718505")
end

function Quest77185:OnSubStart7718506(arg1)
    print("OnSubStart7718506")
    this:GetQuestNpcActor(npcs.Npc7350_1.alias, 77185):DoFreeStyle(1122, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_2.alias, 77185):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_3.alias, 77185):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest77185:OnSubFinish7718506(arg1)
    print("OnSubFinish7718506")
end

function Quest77185:OnSubFailed7718506(arg1)
    print("OnSubFailed7718506")
    this:RecycleAllRes()
    this:ShowBlackScreenWithDialogText(0, 3, 0.5, nil, nil, nil, 771859901, false, true)
end

function Quest77185:OnSubStart7718507(arg1)
    print("OnSubStart7718507")
    this:GetQuestNpcActor(npcs.Npc7350_1.alias, 77185):DoFreeStyle(1122, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_2.alias, 77185):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7350_3.alias, 77185):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest77185:OnSubFinish7718507(arg1)
    print("OnSubFinish7718507")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7350_1.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7350_2.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7350_3.alias)
end

return Quest77185
