require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70099 = class("Quest70099", QuestActorProxy)
Quest70099.defaultAlias = "Quest70099"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70099:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70099:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7009901"] = self.OnSubStart7009901,
        ["7009902"] = self.OnSubStart7009902,
        ["7009903"] = self.OnSubStart7009903,
        ["7009904"] = self.OnSubStart7009904
    }
end

function Quest70099:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7009901"] = self.OnSubFinish7009901,
        ["7009902"] = self.OnSubFinish7009902,
        ["7009903"] = self.OnSubFinish7009903,
        ["7009904"] = self.OnSubFinish7009904
    }
end

function Quest70099:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7009902"] = self.OnSubFailed7009902,
        ["7009903"] = self.OnSubFailed7009903,
        ["7009904"] = self.OnSubFailed7009904
    }
end

function Quest70099:Start()
    print("Start")
end

function Quest70099:OnDestroy()
    print("OnDestroy")
end

function Quest70099:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70099:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70099:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70099:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70099:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70099:ActorDestroy(arg1, arg2)
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

function Quest70099:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(questId)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70099:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70099:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70099:OnSubStart7009901(arg1)
    print("OnSubStart7009901")
    actorMgr:CreateActorWithPos("Q7009901Trigger", "Actor/Gadget/Q7009901Trigger", 70900002, 0, points._Q7009901TriggerPoint_.pos, points._Q7009901TriggerPoint_.rot, true, false, 3, nil, 0, 70099)
end

function Quest70099:OnSubFinish7009901(arg1)
    print("OnSubFinish7009901")
end

function Quest70099:OnSubStart7009902(arg1)
    print("OnSubStart7009902")
    this:CreateQuestNpc(arg1, npcs.Hoffman_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22314.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22312.id, 0, false, 0)
    local questVar = this:GetQuestVar(7009902, 0)
    local v = this:GetQuestVar(7009902, 0)
    if questVar == 0 then
        this:CreateQuestNpcWithTrigger("Q70099N1748Trigger", 7009902, npcs.Npc1748.id, 0, 15, 2)
    elseif v == 1 then
        this:CreateQuestNpc(arg1, npcs.Npc1748.id, 0, false, 0)
    end
end

function Quest70099:OnSubFinish7009902(arg1)
    print("OnSubFinish7009902")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1748.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Hoffman_1.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22314.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22312.alias)
    this:SetQuestVarByMainId(0, 1)
end

function Quest70099:OnSubFailed7009902(arg1)
    print("OnSubFailed7009902")
    this:ActorDestroy("Q7009902Trigger", 70099)
end

function Quest70099:OnSubStart7009903(arg1)
    print("OnSubStart7009903")
    this:PlayerEnterDungeonWithData(1988, 1329, 7009903, 1, datas.TransmitData_7009903, nil, nil)
    this:DeployStoryByQuest(147006504)
    actorMgr:CreateActorWithPos("Q7009903Trigger", "Actor/Gadget/Q7009903Trigger", 70900002, 0, points._Q7009903TriggerPoint_.pos, points._Q7009903TriggerPoint_.rot, true, false, 3, nil, 0, 70099)
end

function Quest70099:OnSubFinish7009903(arg1)
    print("OnSubFinish7009903")
end

function Quest70099:OnSubFailed7009903(arg1)
    print("OnSubFailed7009903")
    this:ActorDestroy("Q7009903Trigger", 70099)
    this:CancelStoryByQuest(147006504)
end

function Quest70099:OnSubStart7009904(arg1)
    print("OnSubStart7009904")
    this:DisableMainPageWithConfigByQuest(true, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
    actorMgr:CreateActorWithPos("Q7009904Trigger_1", "Actor/Gadget/Q7009904Trigger_1", 70900002, 0, points._Q7009904Trigger_1Point_.pos, points._Q7009904Trigger_1Point_.rot, true, false, 20348, nil, 0, 70099)
end

function Quest70099:OnSubFinish7009904(arg1)
    print("OnSubFinish7009904")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
end

function Quest70099:OnSubFailed7009904(arg1)
    print("OnSubFailed7009904")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

return Quest70099
