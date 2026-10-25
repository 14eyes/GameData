require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77240 = class("Quest77240", QuestActorProxy)
Quest77240.defaultAlias = "Quest77240"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77240:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77240:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7724011"] = self.OnSubStart7724011,
        ["7724001"] = self.OnSubStart7724001,
        ["7724008"] = self.OnSubStart7724008,
        ["7724009"] = self.OnSubStart7724009,
        ["7724010"] = self.OnSubStart7724010,
        ["7724002"] = self.OnSubStart7724002,
        ["7724003"] = self.OnSubStart7724003,
        ["7724004"] = self.OnSubStart7724004,
        ["7724005"] = self.OnSubStart7724005,
        ["7724006"] = self.OnSubStart7724006,
        ["7724007"] = self.OnSubStart7724007
    }
end

function Quest77240:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7724011"] = self.OnSubFinish7724011,
        ["7724001"] = self.OnSubFinish7724001,
        ["7724008"] = self.OnSubFinish7724008,
        ["7724009"] = self.OnSubFinish7724009,
        ["7724010"] = self.OnSubFinish7724010,
        ["7724002"] = self.OnSubFinish7724002,
        ["7724003"] = self.OnSubFinish7724003,
        ["7724004"] = self.OnSubFinish7724004,
        ["7724005"] = self.OnSubFinish7724005,
        ["7724006"] = self.OnSubFinish7724006,
        ["7724007"] = self.OnSubFinish7724007
    }
end

function Quest77240:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7724003"] = self.OnSubFailed7724003, ["7724005"] = self.OnSubFailed7724005}
end

function Quest77240:Start()
    print("Start")
end

function Quest77240:OnDestroy()
    print("OnDestroy")
end

function Quest77240:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77240:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77240:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77240:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7724011igger", 77240)
end

function Quest77240:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 7724003)
    elseif arg1 == 2 then
        actorUtils.FinishQuestWithParam({true}, {7724003})
    elseif arg1 == 3 then
        actorUtils.FinishQuestWithParam({false}, {7724005})
    elseif arg1 == 4 then
        actorUtils.FinishQuestWithParam({true}, {7724005})
    elseif arg1 == 5 then
        actorUtils.FinishQuestWithParam({false}, {7724008})
    elseif arg1 == 6 then
        actorUtils.FinishQuestWithParam({false}, {7724009})
    elseif arg1 == 7 then
        actorUtils.FinishQuestWithParam({false}, {7724010})
    end
end

function Quest77240:ActorDestroy(arg1, arg2)
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

function Quest77240:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77240:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77240:OnSubStart7724011(arg1)
    print("OnSubStart7724011")
    this:CreateQuestNpc(arg1, npcs.Npc22770.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7724011igger", "Actor/Gadget/Q7724011igger", 70900002, 0, points._Q7724011iggerPoint_.pos, points._Q7724011iggerPoint_.rot, true, false, 3, nil, 0, 77240)
end

function Quest77240:OnSubFinish7724011(arg1)
    print("OnSubFinish7724011")
end

function Quest77240:OnSubStart7724001(arg1)
    print("OnSubStart7724001")
    this:NpcCreateWithNpcTrigger(npcs.Npc22770.id, 0, 8, 7724001)
end

function Quest77240:OnSubFinish7724001(arg1)
    print("OnSubFinish7724001")
end

function Quest77240:OnSubStart7724008(arg1)
    print("OnSubStart7724008")
end

function Quest77240:OnSubFinish7724008(arg1)
    print("OnSubFinish7724008")
end

function Quest77240:OnSubStart7724009(arg1)
    print("OnSubStart7724009")
end

function Quest77240:OnSubFinish7724009(arg1)
    print("OnSubFinish7724009")
end

function Quest77240:OnSubStart7724010(arg1)
    print("OnSubStart7724010")
end

function Quest77240:OnSubFinish7724010(arg1)
    print("OnSubFinish7724010")
end

function Quest77240:OnSubStart7724002(arg1)
    print("OnSubStart7724002")
    this:CreateQuestNpc(arg1, npcs.Npc22770.id, 0, false, 0)
end

function Quest77240:OnSubFinish7724002(arg1)
    print("OnSubFinish7724002")
    this:ShowBlackScreen(0, 1, 0, nil, nil, nil, "", false, true)
end

function Quest77240:OnSubStart7724003(arg1)
    print("OnSubStart7724003")
    this:NpcCreateWithNpcTrigger(npcs.Npc22770.id, 0, 18, 7724003)
end

function Quest77240:OnSubFinish7724003(arg1)
    print("OnSubFinish7724003")
end

function Quest77240:OnSubFailed7724003(arg1)
    print("OnSubFailed7724003")
    this:RecycleAllRes()
end

function Quest77240:OnSubStart7724004(arg1)
    print("OnSubStart7724004")
end

function Quest77240:OnSubFinish7724004(arg1)
    print("OnSubFinish7724004")
    this:ShowBlackScreen(0, 1, 0, nil, nil, nil, "", false, true)
end

function Quest77240:OnSubStart7724005(arg1)
    print("OnSubStart7724005")
    this:NpcCreateWithNpcTrigger(npcs.Npc22770.id, 0, 18, 7724005)
end

function Quest77240:OnSubFinish7724005(arg1)
    print("OnSubFinish7724005")
    this:SafeDestroyQuestNpc(npcs.Npc22770.alias, 3)
end

function Quest77240:OnSubFailed7724005(arg1)
    print("OnSubFailed7724005")
    this:RecycleAllRes()
end

function Quest77240:OnSubStart7724006(arg1)
    print("OnSubStart7724006")
end

function Quest77240:OnSubFinish7724006(arg1)
    print("OnSubFinish7724006")
end

function Quest77240:OnSubStart7724007(arg1)
    print("OnSubStart7724007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7724007, 0, 18, 1, npcs.Npc22770.id)
end

function Quest77240:OnSubFinish7724007(arg1)
    print("OnSubFinish7724007")
    this:SafeDestroyQuestNpc(npcs.Npc22770.alias, 3)
end

return Quest77240
