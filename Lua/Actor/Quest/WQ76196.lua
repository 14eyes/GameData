require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76196 = class("Quest76196", QuestActorProxy)
Quest76196.defaultAlias = "Quest76196"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76196:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76196:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7619601"] = self.OnSubStart7619601,
        ["7619602"] = self.OnSubStart7619602,
        ["7619603"] = self.OnSubStart7619603,
        ["7619606"] = self.OnSubStart7619606,
        ["7619604"] = self.OnSubStart7619604,
        ["7619605"] = self.OnSubStart7619605
    }
end

function Quest76196:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7619601"] = self.OnSubFinish7619601,
        ["7619602"] = self.OnSubFinish7619602,
        ["7619603"] = self.OnSubFinish7619603,
        ["7619606"] = self.OnSubFinish7619606,
        ["7619604"] = self.OnSubFinish7619604,
        ["7619605"] = self.OnSubFinish7619605
    }
end

function Quest76196:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7619601"] = self.OnSubFailed7619601, ["7619604"] = self.OnSubFailed7619604}
end

function Quest76196:Start()
    print("Start")
end

function Quest76196:OnDestroy()
    print("OnDestroy")
end

function Quest76196:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76196:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76196:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76196:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7619603_TalkTrigger", 76196)
end

function Quest76196:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestWithParam({false}, {7619602})
    elseif arg1 == 2 then
        actorUtils.FinishQuestWithParam({false}, {7619606})
    end
end

function Quest76196:ActorDestroy(arg1, arg2)
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

function Quest76196:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76196:OnSubStart7619601(arg1)
    print("OnSubStart7619601")
end

function Quest76196:OnSubFinish7619601(arg1)
    print("OnSubFinish7619601")
end

function Quest76196:OnSubFailed7619601(arg1)
    print("OnSubFailed7619601")
    this:RecycleAllRes()
end

function Quest76196:OnSubStart7619602(arg1)
    print("OnSubStart7619602")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76196:OnSubFinish7619602(arg1)
    print("OnSubFinish7619602")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76196:OnSubStart7619603(arg1)
    print("OnSubStart7619603")
    this:CreateQuestNpc(arg1, npcs.Npc16663.id, 0, false, 0)
    this:DeployStoryByQuest(147619601)
    actorMgr:CreateActorWithPos("Q7619603_TalkTrigger", "Actor/Gadget/Q7619603_TalkTrigger", 70900002, 0, points._Q7619603_TalkTriggerPoint_.pos, points._Q7619603_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 76196)
end

function Quest76196:OnSubFinish7619603(arg1)
    print("OnSubFinish7619603")
end

function Quest76196:OnSubStart7619606(arg1)
    print("OnSubStart7619606")
end

function Quest76196:OnSubFinish7619606(arg1)
    print("OnSubFinish7619606")
end

function Quest76196:OnSubStart7619604(arg1)
    print("OnSubStart7619604")
    this:CreateQuestNpc(arg1, npcs.Npc16663.id, 0, false, 0)
end

function Quest76196:OnSubFinish7619604(arg1)
    print("OnSubFinish7619604")
end

function Quest76196:OnSubFailed7619604(arg1)
    print("OnSubFailed7619604")
    this:RecycleAllRes()
    this:CancelStoryByQuest(147619601)
end

function Quest76196:OnSubStart7619605(arg1)
    print("OnSubStart7619605")
    this:CreateQuestNpc(arg1, npcs.Npc16663.id, 0, false, 0)
end

function Quest76196:OnSubFinish7619605(arg1)
    print("OnSubFinish7619605")
    this:NpcDestroyImmediately(3, npcs.Npc16663.alias)
    this:CancelStoryByQuest(147619601)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc16574.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_Dorota)
    this:GetQuestNpcActor(npcs.Npc16574.alias, 76196):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16574.alias, 76196):DisableInteeHeadCtrl(true)
    this:CallDelayByQuest("7619605Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

return Quest76196
