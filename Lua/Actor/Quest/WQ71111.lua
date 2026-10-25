require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71111 = class("Quest71111", QuestActorProxy)
Quest71111.defaultAlias = "Quest71111"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71111:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71111:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7111101"] = self.OnSubStart7111101,
        ["7111106"] = self.OnSubStart7111106,
        ["7111102"] = self.OnSubStart7111102,
        ["7111103"] = self.OnSubStart7111103,
        ["7111109"] = self.OnSubStart7111109,
        ["7111110"] = self.OnSubStart7111110,
        ["7111104"] = self.OnSubStart7111104,
        ["7111105"] = self.OnSubStart7111105,
        ["7111107"] = self.OnSubStart7111107,
        ["7111108"] = self.OnSubStart7111108
    }
end

function Quest71111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7111101"] = self.OnSubFinish7111101,
        ["7111106"] = self.OnSubFinish7111106,
        ["7111102"] = self.OnSubFinish7111102,
        ["7111103"] = self.OnSubFinish7111103,
        ["7111109"] = self.OnSubFinish7111109,
        ["7111110"] = self.OnSubFinish7111110,
        ["7111104"] = self.OnSubFinish7111104,
        ["7111105"] = self.OnSubFinish7111105,
        ["7111107"] = self.OnSubFinish7111107,
        ["7111108"] = self.OnSubFinish7111108
    }
end

function Quest71111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71111:Start()
    print("Start")
end

function Quest71111:OnDestroy()
    print("OnDestroy")
end

function Quest71111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71111:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71111:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71111:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71111:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 711110801 then
        actorUtils.FinishQuestID(false, 7111108)
    end
end

function Quest71111:OnSubStart7111101(arg1)
    print("OnSubStart7111101")
    this:CreateQuestNpc(arg1, npcs.Npc2494Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2488Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2254Data.id, 0)
end

function Quest71111:OnSubFinish7111101(arg1)
    print("OnSubFinish7111101")
    this:ActorDestroy("Q7111106RmdTrigger")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2488Data.alias)
end

function Quest71111:OnSubStart7111106(arg1)
    print("OnSubStart7111106")
    actorMgr:CreateActorWithPos("Q7111106RmdTrigger", "Actor/Gadget/Q7111106RmdTrigger", 70900002, 0, points.TPos_Q7111106RmdTrigger.pos, points.TPos_Q7111106RmdTrigger.rot, true, false, 3)
end

function Quest71111:OnSubFinish7111106(arg1)
    print("OnSubFinish7111106")
end

function Quest71111:OnSubStart7111102(arg1)
    print("OnSubStart7111102")
    actorMgr:CreateActorWithPos("Q7111102Trigger", "Actor/Gadget/Q7111102Trigger", 70900002, 0, points.TPos_Q7111102Trigger.pos, points.TPos_Q7111102Trigger.rot, true, false, 3)
end

function Quest71111:OnSubFinish7111102(arg1)
    print("OnSubFinish7111102")
end

function Quest71111:OnSubStart7111103(arg1)
    print("OnSubStart7111103")
    this:CreateQuestNpc(arg1, npcs.Npc2231Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2488Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:RequestInteraction(npcs.Npc2488Data.alias, "", true)
    end)
end

function Quest71111:OnSubFinish7111103(arg1)
    print("OnSubFinish7111103")
end

function Quest71111:OnSubStart7111109(arg1)
    print("OnSubStart7111109")
    this:CreateQuestNpc(arg1, npcs.Npc2231Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2494Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2488Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2254Data.id, 0)
    actorMgr:CreateActorWithPos("Q7111109Trigger", "Actor/Gadget/Q7111109Trigger", 70900002, 0, points.TPos_Q7111109Trigger.pos, points.TPos_Q7111109Trigger.rot, true, false, 3)
end

function Quest71111:OnSubFinish7111109(arg1)
    print("OnSubFinish7111109")
end

function Quest71111:OnSubStart7111110(arg1)
    print("OnSubStart7111110")
    this:RequestInteraction(npcs.Npc2488Data.alias, "1", true)
end

function Quest71111:OnSubFinish7111110(arg1)
    print("OnSubFinish7111110")
end

function Quest71111:OnSubStart7111104(arg1)
    print("OnSubStart7111104")
    this:CreateQuestNpc(arg1, npcs.Npc2254Data.id, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2231Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2232Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2494Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2488Data.id, 0)
        this:CallDelayByQuest("d1", 1.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc2231Data.alias, 71111)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.route_7111104_N2231, 999, 999, -1, nil, nil, nil, nil, nil, nil, false)
            local v = this:GetQuestNpcActor(npcs.Npc2232Data.alias, 71111)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.route_7111104_N2232, 999, 999, -1, function(arg1)
                this:QuestNarratorTask(datas.Narrator_7111105, function(arg1)
                    actorUtils.FinishQuestID(false, 7111104)
                end)
            end, nil, nil, nil, nil, nil, false)

            this:CallDelayByQuest("d24940", 1, function(arg1)
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc2494Data.alias, 71111)
                this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.route_7111104_N2494, 999, 999, -1, function(arg1)
                    this:CallDelayByQuest("d24941", 2, function(arg1)
                        local questNpcActor = this:GetQuestNpcActor(npcs.Npc2494Data.alias, 71111)
                        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.route_7111104_N2494_2, 999, 999, -1, function(arg1)
                            this:CallDelayByQuest("d24942", 2, function(arg1)
                                local questNpcActor = this:GetQuestNpcActor(npcs.Npc2494Data.alias, 71111)
                                this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.route_7111104_N2494_3, 999, 999, -1, nil, nil, nil, nil, nil, nil, false)
                                local v = this:GetQuestNpcActor(npcs.Npc2488Data.alias, 71111)
                                this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.route_7111104_N2488_3, 999, 999, -1, nil, nil, nil, nil, nil, nil, false)
                            end)
                        end, nil, nil, nil, nil, nil, false)

                        local v = this:GetQuestNpcActor(npcs.Npc2488Data.alias, 71111)
                        this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.route_7111104_N2488_2, 999, 999, -1, nil, nil, nil, nil, nil, nil, false)
                    end)
                end, nil, nil, nil, nil, nil, false)

                local v = this:GetQuestNpcActor(npcs.Npc2488Data.alias, 71111)
                this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.route_7111104_N2488, 999, 999, -1, nil, nil, nil, nil, nil, nil, false)
                this:QuestNarratorTask(datas.Narrator_7111104)
            end)
        end)

        actorMgr:CreateActorWithPos("Q71111RunFailedTrigger", "Actor/Gadget/Q71111RunFailedTrigger", 70900002, 0, points.TPos_Q71111RunFailedTrigger.pos, points.TPos_Q71111RunFailedTrigger.rot, true, false, 3)
    end)
end

function Quest71111:OnSubFinish7111104(arg1)
    print("OnSubFinish7111104")
    this:ActorDestroy("Q71111RunFailedTrigger")
    this:GetQuestNpcActor(npcs.Npc2231Data.alias):Standby()
    this:GetQuestNpcActor(npcs.Npc2232Data.alias):Standby()
    this:GetQuestNpcActor(npcs.Npc2494Data.alias):Standby()
    this:GetQuestNpcActor(npcs.Npc2488Data.alias):Standby()
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest71111:OnSubStart7111105(arg1)
    print("OnSubStart7111105")
    this:CreateQuestNpc(arg1, npcs.Npc2231Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2232Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2494Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2488Data.id, 0)
end

function Quest71111:OnSubFinish7111105(arg1)
    print("OnSubFinish7111105")
end

function Quest71111:OnSubStart7111107(arg1)
    print("OnSubStart7111107")
end

function Quest71111:OnSubFinish7111107(arg1)
    print("OnSubFinish7111107")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2231Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc2232Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2494Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2488Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2254Data.alias, 3)
end

function Quest71111:OnSubStart7111108(arg1)
    print("OnSubStart7111108")
end

function Quest71111:OnSubFinish7111108(arg1)
    print("OnSubFinish7111108")
end

return Quest71111
