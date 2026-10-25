require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75004 = class("Quest75004", QuestActorProxy)
Quest75004.defaultAlias = "Quest75004"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75004:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500401"] = self.OnSubStart7500401,
        ["7500420"] = self.OnSubStart7500420,
        ["7500402"] = self.OnSubStart7500402,
        ["7500403"] = self.OnSubStart7500403,
        ["7500404"] = self.OnSubStart7500404,
        ["7500405"] = self.OnSubStart7500405,
        ["7500418"] = self.OnSubStart7500418,
        ["7500406"] = self.OnSubStart7500406,
        ["7500407"] = self.OnSubStart7500407,
        ["7500408"] = self.OnSubStart7500408,
        ["7500409"] = self.OnSubStart7500409,
        ["7500410"] = self.OnSubStart7500410,
        ["7500419"] = self.OnSubStart7500419,
        ["7500411"] = self.OnSubStart7500411,
        ["7500412"] = self.OnSubStart7500412,
        ["7500415"] = self.OnSubStart7500415,
        ["7500413"] = self.OnSubStart7500413,
        ["7500414"] = self.OnSubStart7500414,
        ["7500417"] = self.OnSubStart7500417,
        ["7500416"] = self.OnSubStart7500416,
        ["7500421"] = self.OnSubStart7500421,
        ["7500422"] = self.OnSubStart7500422,
        ["7500423"] = self.OnSubStart7500423
    }
end

function Quest75004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500401"] = self.OnSubFinish7500401,
        ["7500420"] = self.OnSubFinish7500420,
        ["7500402"] = self.OnSubFinish7500402,
        ["7500403"] = self.OnSubFinish7500403,
        ["7500404"] = self.OnSubFinish7500404,
        ["7500405"] = self.OnSubFinish7500405,
        ["7500418"] = self.OnSubFinish7500418,
        ["7500406"] = self.OnSubFinish7500406,
        ["7500407"] = self.OnSubFinish7500407,
        ["7500408"] = self.OnSubFinish7500408,
        ["7500409"] = self.OnSubFinish7500409,
        ["7500410"] = self.OnSubFinish7500410,
        ["7500419"] = self.OnSubFinish7500419,
        ["7500411"] = self.OnSubFinish7500411,
        ["7500412"] = self.OnSubFinish7500412,
        ["7500415"] = self.OnSubFinish7500415,
        ["7500413"] = self.OnSubFinish7500413,
        ["7500414"] = self.OnSubFinish7500414,
        ["7500417"] = self.OnSubFinish7500417,
        ["7500416"] = self.OnSubFinish7500416,
        ["7500421"] = self.OnSubFinish7500421,
        ["7500422"] = self.OnSubFinish7500422,
        ["7500423"] = self.OnSubFinish7500423
    }
end

function Quest75004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75004:Start()
    print("Start")
end

function Quest75004:OnDestroy()
    print("OnDestroy")
end

function Quest75004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75004:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest75004:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest75004:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest75004:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75004:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg1, arg2, arg3, arg4, arg5, arg6)
end

function Quest75004:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg1, arg2)
end

function Quest75004:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 7500419)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 7500418)
    elseif arg1 == 2 then
        this:SetQuestVarByMainId(4, 90)
    elseif arg1 == 3 then
        this:SetQuestVarByMainId(4, 1)
    end
end

function Quest75004:OnSubStart7500401(arg1)
    print("OnSubStart7500401")
    actorMgr:CreateActorWithPos("Q7500401NNNTrigger", "Actor/Gadget/Q7500401NNNTrigger", 70900002, 0, {x = -1426.58, y = -176.715, z = 8450.477}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75004:OnSubFinish7500401(arg1)
    print("OnSubFinish7500401")
    this:SetNavigationByMainId(75004, true)
end

function Quest75004:OnSubStart7500420(arg1)
    print("OnSubStart7500420")
    actorMgr:CreateActorWithPos("Q7500420NNNTrigger", "Actor/Gadget/Q7500420NNNTrigger", 70900002, 0, {x = -1369.569, y = -182.998, z = 8484.174}, {x = 0.0, y = 10.958, z = 0.0}, true, false, 3)
end

function Quest75004:OnSubFinish7500420(arg1)
    print("OnSubFinish7500420")
    this:SetNavigationByMainId(75004, true)
end

function Quest75004:OnSubStart7500402(arg1)
    print("OnSubStart7500402")
    actorMgr:CreateActorWithPos("Q7500402Trigger", "Actor/Gadget/Q7500402Trigger", 70900002, 0, {x = -1355.09, y = -198.857, z = 8513.01}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75004:OnSubFinish7500402(arg1)
    print("OnSubFinish7500402")
    this:SetNavigationByMainId(75004, true)
end

function Quest75004:OnSubStart7500403(arg1)
    print("OnSubStart7500403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21557Data.id, 7500403, 0, 50, 1, false)
end

function Quest75004:OnSubFinish7500403(arg1)
    print("OnSubFinish7500403")
    this:SetNavigationByMainId(75004, true)
    this:SafeDestroyQuestNpc(npcs.Npc21557Data.alias, 3)
end

function Quest75004:OnSubStart7500404(arg1)
    print("OnSubStart7500404")
end

function Quest75004:OnSubFinish7500404(arg1)
    print("OnSubFinish7500404")
    this:SetNavigationByMainId(75004, true)
end

function Quest75004:OnSubStart7500405(arg1)
    print("OnSubStart7500405")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21557Data.id, 7500405, 0, 50, 1, false)
end

function Quest75004:OnSubFinish7500405(arg1)
    print("OnSubFinish7500405")
    this:SetNavigationByMainId(75004, true)
    this:SafeDestroyQuestNpc(npcs.Npc21557Data.alias, 3)
end

function Quest75004:OnSubStart7500418(arg1)
    print("OnSubStart7500418")
end

function Quest75004:OnSubFinish7500418(arg1)
    print("OnSubFinish7500418")
    this:SetNavigationByMainId(75004, true)
end

function Quest75004:OnSubStart7500406(arg1)
    print("OnSubStart7500406")
end

function Quest75004:OnSubFinish7500406(arg1)
    print("OnSubFinish7500406")
end

function Quest75004:OnSubStart7500407(arg1)
    print("OnSubStart7500407")
end

function Quest75004:OnSubFinish7500407(arg1)
    print("OnSubFinish7500407")
end

function Quest75004:OnSubStart7500408(arg1)
    print("OnSubStart7500408")
end

function Quest75004:OnSubFinish7500408(arg1)
    print("OnSubFinish7500408")
end

function Quest75004:OnSubStart7500409(arg1)
    print("OnSubStart7500409")
    actorMgr:CreateActorWithPos("Q7500409Trigger", "Actor/Gadget/Q7500409Trigger", 70900002, 0, {x = -1301.347, y = -190.705, z = 8614.409}, {x = 0.0, y = 32.446, z = 0.0}, true, false)
end

function Quest75004:OnSubFinish7500409(arg1)
    print("OnSubFinish7500409")
end

function Quest75004:OnSubStart7500410(arg1)
    print("OnSubStart7500410")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21557Data.id, 7500410, 0, 50, 1, false)
end

function Quest75004:OnSubFinish7500410(arg1)
    print("OnSubFinish7500410")
    this:SafeDestroyQuestNpc(npcs.Npc21557Data.alias, 3)
end

function Quest75004:OnSubStart7500419(arg1)
    print("OnSubStart7500419")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(arg1, npcs.Npc6131Data.id, 0)
    end)
end

function Quest75004:OnSubFinish7500419(arg1)
    print("OnSubFinish7500419")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6131Data.alias)
end

function Quest75004:OnSubStart7500411(arg1)
    print("OnSubStart7500411")
    actorMgr:CreateActorWithPos("Q7500411FailTrigger", "Actor/Gadget/Q7500411FailTrigger", 70900002, 0, {x = -1300.438, y = -204.396, z = 8616.293}, {x = 0.0, y = 30.0, z = 0.0}, true, false, 3)
end

function Quest75004:OnSubFinish7500411(arg1)
    print("OnSubFinish7500411")
    this:ActorDestroy("Q7500411FailTrigger")
end

function Quest75004:OnSubStart7500412(arg1)
    print("OnSubStart7500412")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7500412, function(arg1)
            actorUtils.FinishQuestID(false, 7500412)
        end, nil, nil, false)
    end)
end

function Quest75004:OnSubFinish7500412(arg1)
    print("OnSubFinish7500412")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 41)
end

function Quest75004:OnSubStart7500415(arg1)
    print("OnSubStart7500415")
    actorMgr:CreateActorWithPos("Q7500409Trigger", "Actor/Gadget/Q7500409Trigger", 70900002, 0, {x = -1301.347, y = -190.705, z = 8614.409}, {x = 0.0, y = 32.446, z = 0.0}, true, false)
end

function Quest75004:OnSubFinish7500415(arg1)
    print("OnSubFinish7500415")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 41)
end

function Quest75004:OnSubStart7500413(arg1)
    print("OnSubStart7500413")
    this:NpcCreateWithNpcTrigger(npcs.Npc21556Data.id, 7500413, 0, 100)
end

function Quest75004:OnSubFinish7500413(arg1)
    print("OnSubFinish7500413")
    this:TransmitPlayerUseCustomizedTplById(arg1, 2, 41)
    this:SafeDestroyQuestNpc(npcs.Npc21556Data.alias, 3)
end

function Quest75004:OnSubStart7500414(arg1)
    print("OnSubStart7500414")
    this:NpcCreateWithNpcTrigger(npcs.Npc6131Data.id, 7500414, 0, 15)
    this:CreateRepeatableNpcShowDisappearTriggerCommon("Q7500414", 7500414, npcs.Npc21460Data.id, 0, 30, 35)
end

function Quest75004:OnSubFinish7500414(arg1)
    print("OnSubFinish7500414")
    this:SafeDestroyQuestNpc(npcs.Npc6131Data.alias, 3)
    this:DestroyRepeatableNpcShowDisappearTriggerCommon("Q7500414", false)
end

function Quest75004:OnSubStart7500417(arg1)
    print("OnSubStart7500417")
end

function Quest75004:OnSubFinish7500417(arg1)
    print("OnSubFinish7500417")
end

function Quest75004:OnSubStart7500416(arg1)
    print("OnSubStart7500416")
end

function Quest75004:OnSubFinish7500416(arg1)
    print("OnSubFinish7500416")
end

function Quest75004:OnSubStart7500421(arg1)
    print("OnSubStart7500421")
    actorUtils.FinishQuestID(false, 7500421)
end

function Quest75004:OnSubFinish7500421(arg1)
    print("OnSubFinish7500421")
end

function Quest75004:OnSubStart7500422(arg1)
    print("OnSubStart7500422")
    actorUtils.FinishQuestID(false, 7500422)
end

function Quest75004:OnSubFinish7500422(arg1)
    print("OnSubFinish7500422")
end

function Quest75004:OnSubStart7500423(arg1)
    print("OnSubStart7500423")
    actorUtils.FinishQuestID(false, 7500423)
end

function Quest75004:OnSubFinish7500423(arg1)
    print("OnSubFinish7500423")
end

return Quest75004
