require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71139 = class("Quest71139", QuestActorProxy)
Quest71139.defaultAlias = "Quest71139"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest71139:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71139:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7113907"] = self.OnSubStart7113907,
        ["7113901"] = self.OnSubStart7113901,
        ["7113902"] = self.OnSubStart7113902,
        ["7113903"] = self.OnSubStart7113903,
        ["7113904"] = self.OnSubStart7113904,
        ["7113905"] = self.OnSubStart7113905,
        ["7113906"] = self.OnSubStart7113906,
        ["7113908"] = self.OnSubStart7113908
    }
end

function Quest71139:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7113907"] = self.OnSubFinish7113907,
        ["7113901"] = self.OnSubFinish7113901,
        ["7113902"] = self.OnSubFinish7113902,
        ["7113903"] = self.OnSubFinish7113903,
        ["7113904"] = self.OnSubFinish7113904,
        ["7113905"] = self.OnSubFinish7113905,
        ["7113906"] = self.OnSubFinish7113906,
        ["7113908"] = self.OnSubFinish7113908
    }
end

function Quest71139:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7113902"] = self.OnSubFailed7113902,
        ["7113903"] = self.OnSubFailed7113903,
        ["7113904"] = self.OnSubFailed7113904,
        ["7113905"] = self.OnSubFailed7113905,
        ["7113906"] = self.OnSubFailed7113906,
        ["7113908"] = self.OnSubFailed7113908
    }
end

function Quest71139:Start()
    print("Start")
end

function Quest71139:OnDestroy()
    print("OnDestroy")
end

function Quest71139:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71139:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71139:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71139:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7113901Trigger")
end

function Quest71139:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71139:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest71139:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest71139:OnSubStart7113907(arg1)
    print("OnSubStart7113907")
    this:NpcCreateWithBlackscreen(0, npcs.Npc21307Data.id, arg1)
    actorMgr:CreateActorWithPos("Q7113901Trigger", "Actor/Gadget/Q7113901Trigger", 70900002, 0, points.TPos_Q7113901Trigger.pos, points.TPos_Q7113901Trigger.rot, true, false, 3)
end

function Quest71139:OnSubFinish7113907(arg1)
    print("OnSubFinish7113907")
    this:SafeDestroyQuestNpc(npcs.Npc21307Data.alias, 3)
end

function Quest71139:OnSubStart7113901(arg1)
    print("OnSubStart7113901")
    actorUtils.FinishQuestID(false, 7113901)
end

function Quest71139:OnSubFinish7113901(arg1)
    print("OnSubFinish7113901")
    local subQuestState = this:GetSubQuestState(7113501)
    local questGlobalVar = this:GetQuestGlobalVar(7110601)
    if subQuestState ~= 3 and questGlobalVar == 0 then
        this:SetQuestVarWithInterval(7113901, 0, 1, 2)
    elseif subQuestState ~= 3 and questGlobalVar == 1 then
        this:SetQuestVarWithInterval(7113901, 0, 1, 3)
    elseif subQuestState == 3 and questGlobalVar == 0 then
        local n = math.random(1, 2)
        if n == 1 then
            this:SetQuestVarWithInterval(7113901, 0, 1, 2)
        elseif n == 2 then
            this:SetQuestVarWithInterval(7113901, 0, 4, 5)
        end
    elseif subQuestState == 3 and questGlobalVar == 1 then
        this:SetQuestVarWithInterval(7113901, 0, 1, 5)
    end
end

function Quest71139:OnSubStart7113902(arg1)
    print("OnSubStart7113902")
    this:CreateQuestNpc(arg1, npcs.Npc21307Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
end

function Quest71139:OnSubFinish7113902(arg1)
    print("OnSubFinish7113902")
end

function Quest71139:OnSubFailed7113902(arg1)
    print("OnSubFailed7113902")
    this:SafeDestroyQuestNpc(npcs.Npc21307Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2501Data.alias, 3)
end

function Quest71139:OnSubStart7113903(arg1)
    print("OnSubStart7113903")
    this:CreateQuestNpc(arg1, npcs.Npc21307Data.id, 0)
end

function Quest71139:OnSubFinish7113903(arg1)
    print("OnSubFinish7113903")
end

function Quest71139:OnSubFailed7113903(arg1)
    print("OnSubFailed7113903")
    this:SafeDestroyQuestNpc(npcs.Npc21307Data.alias, 3)
end

function Quest71139:OnSubStart7113904(arg1)
    print("OnSubStart7113904")
    this:CreateQuestNpc(arg1, npcs.Npc2498Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
end

function Quest71139:OnSubFinish7113904(arg1)
    print("OnSubFinish7113904")
end

function Quest71139:OnSubFailed7113904(arg1)
    print("OnSubFailed7113904")
    this:SafeDestroyQuestNpc(npcs.Npc2498Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2501Data.alias, 3)
end

function Quest71139:OnSubStart7113905(arg1)
    print("OnSubStart7113905")
    this:CreateQuestNpc(arg1, npcs.Npc21307Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
end

function Quest71139:OnSubFinish7113905(arg1)
    print("OnSubFinish7113905")
end

function Quest71139:OnSubFailed7113905(arg1)
    print("OnSubFailed7113905")
    this:SafeDestroyQuestNpc(npcs.Npc21307Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 3)
end

function Quest71139:OnSubStart7113906(arg1)
    print("OnSubStart7113906")
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
end

function Quest71139:OnSubFinish7113906(arg1)
    print("OnSubFinish7113906")
end

function Quest71139:OnSubFailed7113906(arg1)
    print("OnSubFailed7113906")
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2501Data.alias, 3)
end

function Quest71139:OnSubStart7113908(arg1)
    print("OnSubStart7113908")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21307Data.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21094Data.id, arg1)
end

function Quest71139:OnSubFinish7113908(arg1)
    print("OnSubFinish7113908")
end

function Quest71139:OnSubFailed7113908(arg1)
    print("OnSubFailed7113908")
    this:SafeDestroyQuestNpc(npcs.Npc21307Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 3)
end

return Quest71139
