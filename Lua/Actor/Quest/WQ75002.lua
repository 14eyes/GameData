require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75002 = class("Quest75002", QuestActorProxy)
Quest75002.defaultAlias = "Quest75002"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75002:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500230"] = self.OnSubStart7500230,
        ["7500201"] = self.OnSubStart7500201,
        ["7500203"] = self.OnSubStart7500203,
        ["7500204"] = self.OnSubStart7500204,
        ["7500236"] = self.OnSubStart7500236,
        ["7500207"] = self.OnSubStart7500207,
        ["7500208"] = self.OnSubStart7500208,
        ["7500209"] = self.OnSubStart7500209,
        ["7500211"] = self.OnSubStart7500211,
        ["7500212"] = self.OnSubStart7500212,
        ["7500213"] = self.OnSubStart7500213,
        ["7500214"] = self.OnSubStart7500214,
        ["7500231"] = self.OnSubStart7500231,
        ["7500215"] = self.OnSubStart7500215,
        ["7500216"] = self.OnSubStart7500216,
        ["7500217"] = self.OnSubStart7500217,
        ["7500219"] = self.OnSubStart7500219,
        ["7500220"] = self.OnSubStart7500220,
        ["7500221"] = self.OnSubStart7500221,
        ["7500222"] = self.OnSubStart7500222,
        ["7500224"] = self.OnSubStart7500224,
        ["7500238"] = self.OnSubStart7500238,
        ["7500239"] = self.OnSubStart7500239,
        ["7500223"] = self.OnSubStart7500223,
        ["7500225"] = self.OnSubStart7500225,
        ["7500229"] = self.OnSubStart7500229,
        ["7500226"] = self.OnSubStart7500226,
        ["7500227"] = self.OnSubStart7500227,
        ["7500232"] = self.OnSubStart7500232,
        ["7500233"] = self.OnSubStart7500233,
        ["7500237"] = self.OnSubStart7500237,
        ["7500234"] = self.OnSubStart7500234,
        ["7500235"] = self.OnSubStart7500235,
        ["7500218"] = self.OnSubStart7500218,
        ["7500228"] = self.OnSubStart7500228,
        ["7500210"] = self.OnSubStart7500210,
        ["7500205"] = self.OnSubStart7500205,
        ["7500206"] = self.OnSubStart7500206,
        ["7500202"] = self.OnSubStart7500202
    }
end

function Quest75002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500230"] = self.OnSubFinish7500230,
        ["7500201"] = self.OnSubFinish7500201,
        ["7500203"] = self.OnSubFinish7500203,
        ["7500204"] = self.OnSubFinish7500204,
        ["7500236"] = self.OnSubFinish7500236,
        ["7500207"] = self.OnSubFinish7500207,
        ["7500208"] = self.OnSubFinish7500208,
        ["7500209"] = self.OnSubFinish7500209,
        ["7500211"] = self.OnSubFinish7500211,
        ["7500212"] = self.OnSubFinish7500212,
        ["7500213"] = self.OnSubFinish7500213,
        ["7500214"] = self.OnSubFinish7500214,
        ["7500231"] = self.OnSubFinish7500231,
        ["7500215"] = self.OnSubFinish7500215,
        ["7500216"] = self.OnSubFinish7500216,
        ["7500217"] = self.OnSubFinish7500217,
        ["7500219"] = self.OnSubFinish7500219,
        ["7500220"] = self.OnSubFinish7500220,
        ["7500221"] = self.OnSubFinish7500221,
        ["7500222"] = self.OnSubFinish7500222,
        ["7500224"] = self.OnSubFinish7500224,
        ["7500238"] = self.OnSubFinish7500238,
        ["7500239"] = self.OnSubFinish7500239,
        ["7500223"] = self.OnSubFinish7500223,
        ["7500225"] = self.OnSubFinish7500225,
        ["7500229"] = self.OnSubFinish7500229,
        ["7500226"] = self.OnSubFinish7500226,
        ["7500227"] = self.OnSubFinish7500227,
        ["7500232"] = self.OnSubFinish7500232,
        ["7500233"] = self.OnSubFinish7500233,
        ["7500237"] = self.OnSubFinish7500237,
        ["7500234"] = self.OnSubFinish7500234,
        ["7500235"] = self.OnSubFinish7500235,
        ["7500218"] = self.OnSubFinish7500218,
        ["7500228"] = self.OnSubFinish7500228,
        ["7500210"] = self.OnSubFinish7500210,
        ["7500205"] = self.OnSubFinish7500205,
        ["7500206"] = self.OnSubFinish7500206,
        ["7500202"] = self.OnSubFinish7500202
    }
end

function Quest75002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7500237"] = self.OnSubFailed7500237, ["7500234"] = self.OnSubFailed7500234}
end

function Quest75002:Start()
    print("Start")
end

function Quest75002:OnDestroy()
    print("OnDestroy")
end

function Quest75002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75002:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest75002:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest75002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 7500238)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 7500239)
    end
end

function Quest75002:OnSubStart7500230(arg1)
    print("OnSubStart7500230")
    this:ActionSafeCall(function(arg1)
        actorUtils.SimpleUIShowForLua(false, "QuestReviewTipsDialog", "75002")
    end)
end

function Quest75002:OnSubFinish7500230(arg1)
    print("OnSubFinish7500230")
    this:SetNavigationByMainId(75002, true)
end

function Quest75002:OnSubStart7500201(arg1)
    print("OnSubStart7500201")
end

function Quest75002:OnSubFinish7500201(arg1)
    print("OnSubFinish7500201")
    this:SetNavigationByMainId(75002, true)
end

function Quest75002:OnSubStart7500203(arg1)
    print("OnSubStart7500203")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21481Data.id, 7500203, 0, 30, 1, false)
end

function Quest75002:OnSubFinish7500203(arg1)
    print("OnSubFinish7500203")
    this:SafeDestroyQuestNpc(npcs.Npc21481Data.alias, 3)
end

function Quest75002:OnSubStart7500204(arg1)
    print("OnSubStart7500204")
end

function Quest75002:OnSubFinish7500204(arg1)
    print("OnSubFinish7500204")
end

function Quest75002:OnSubStart7500236(arg1)
    print("OnSubStart7500236")
    actorMgr:CreateActorWithPos("Q7500236Trigger", "Actor/Gadget/Q7500236Trigger", 70900002, 0, {x = -1341.784, y = 45.093, z = 7986.721}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500236(arg1)
    print("OnSubFinish7500236")
end

function Quest75002:OnSubStart7500207(arg1)
    print("OnSubStart7500207")
    actorMgr:CreateActorWithPos("Q7500207Trigger", "Actor/Gadget/Q7500207Trigger", 70900002, 0, {x = -1360.394, y = -63.641, z = 8050.75}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500207(arg1)
    print("OnSubFinish7500207")
end

function Quest75002:OnSubStart7500208(arg1)
    print("OnSubStart7500208")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21515Data.id, 7500208, 0, 46, 1, false)
end

function Quest75002:OnSubFinish7500208(arg1)
    print("OnSubFinish7500208")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75002:OnSubStart7500209(arg1)
    print("OnSubStart7500209")
end

function Quest75002:OnSubFinish7500209(arg1)
    print("OnSubFinish7500209")
end

function Quest75002:OnSubStart7500211(arg1)
    print("OnSubStart7500211")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21515Data.id, 7500211, 0, 30, 1, false)
end

function Quest75002:OnSubFinish7500211(arg1)
    print("OnSubFinish7500211")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75002:OnSubStart7500212(arg1)
    print("OnSubStart7500212")
    actorMgr:CreateActorWithPos("Q7500212Trigger", "Actor/Gadget/Q7500212Trigger", 70900002, 0, {x = -1548.927, y = -69.18, z = 8022.914}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500212(arg1)
    print("OnSubFinish7500212")
end

function Quest75002:OnSubStart7500213(arg1)
    print("OnSubStart7500213")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21515Data.id, 7500213, 0, 30, 1, false)
end

function Quest75002:OnSubFinish7500213(arg1)
    print("OnSubFinish7500213")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75002:OnSubStart7500214(arg1)
    print("OnSubStart7500214")
end

function Quest75002:OnSubFinish7500214(arg1)
    print("OnSubFinish7500214")
end

function Quest75002:OnSubStart7500231(arg1)
    print("OnSubStart7500231")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21515Data.id, 7500231, 0, 50, 1, false)
end

function Quest75002:OnSubFinish7500231(arg1)
    print("OnSubFinish7500231")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75002:OnSubStart7500215(arg1)
    print("OnSubStart7500215")
end

function Quest75002:OnSubFinish7500215(arg1)
    print("OnSubFinish7500215")
end

function Quest75002:OnSubStart7500216(arg1)
    print("OnSubStart7500216")
    actorMgr:CreateActorWithPos("Q7500216Trigger", "Actor/Gadget/Q7500216Trigger", 70900002, 0, {x = -1683.614, y = -42.576, z = 7962.691}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500216(arg1)
    print("OnSubFinish7500216")
end

function Quest75002:OnSubStart7500217(arg1)
    print("OnSubStart7500217")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21515Data.id, 7500217, 0, 30, 1, false)
end

function Quest75002:OnSubFinish7500217(arg1)
    print("OnSubFinish7500217")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75002:OnSubStart7500219(arg1)
    print("OnSubStart7500219")
end

function Quest75002:OnSubFinish7500219(arg1)
    print("OnSubFinish7500219")
end

function Quest75002:OnSubStart7500220(arg1)
    print("OnSubStart7500220")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7500220, function(arg1)
            actorUtils.FinishQuestID(false, 7500220)
        end, nil, nil, false)
    end)
end

function Quest75002:OnSubFinish7500220(arg1)
    print("OnSubFinish7500220")
end

function Quest75002:OnSubStart7500221(arg1)
    print("OnSubStart7500221")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75002:OnSubFinish7500221(arg1)
    print("OnSubFinish7500221")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75002:OnSubStart7500222(arg1)
    print("OnSubStart7500222")
    actorMgr:CreateActorWithPos("Q7500222Trigger", "Actor/Gadget/Q7500222Trigger", 70900002, 0, {x = -1418.043, y = -293.864, z = 7596.177}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500222(arg1)
    print("OnSubFinish7500222")
end

function Quest75002:OnSubStart7500224(arg1)
    print("OnSubStart7500224")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21515Data.id, 7500224, 0, 30, 1, false)
    end)
end

function Quest75002:OnSubFinish7500224(arg1)
    print("OnSubFinish7500224")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75002:OnSubStart7500238(arg1)
    print("OnSubStart7500238")
end

function Quest75002:OnSubFinish7500238(arg1)
    print("OnSubFinish7500238")
end

function Quest75002:OnSubStart7500239(arg1)
    print("OnSubStart7500239")
end

function Quest75002:OnSubFinish7500239(arg1)
    print("OnSubFinish7500239")
end

function Quest75002:OnSubStart7500223(arg1)
    print("OnSubStart7500223")
    actorMgr:CreateActorWithPos("Q7500223Trigger", "Actor/Gadget/Q7500223Trigger", 70900002, 0, {x = -1416.507, y = -293.833, z = 7599.879}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500223(arg1)
    print("OnSubFinish7500223")
end

function Quest75002:OnSubStart7500225(arg1)
    print("OnSubStart7500225")
end

function Quest75002:OnSubFinish7500225(arg1)
    print("OnSubFinish7500225")
end

function Quest75002:OnSubStart7500229(arg1)
    print("OnSubStart7500229")
    actorMgr:CreateActorWithPos("Q7500229Trigger", "Actor/Gadget/Q7500229Trigger", 70900002, 0, {x = -1416.465, y = -293.833, z = 7599.934}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500229(arg1)
    print("OnSubFinish7500229")
end

function Quest75002:OnSubStart7500226(arg1)
    print("OnSubStart7500226")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21515Data.id, 7500226, 0, 30, 1, false)
    end)
end

function Quest75002:OnSubFinish7500226(arg1)
    print("OnSubFinish7500226")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75002:OnSubStart7500227(arg1)
    print("OnSubStart7500227")
end

function Quest75002:OnSubFinish7500227(arg1)
    print("OnSubFinish7500227")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 42)
end

function Quest75002:OnSubStart7500232(arg1)
    print("OnSubStart7500232")
    actorMgr:CreateActorWithPos("Q7500232Trigger", "Actor/Gadget/Q7500232Trigger", 70900002, 0, {x = -1416.585, y = -293.833, z = 7602.764}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500232(arg1)
    print("OnSubFinish7500232")
end

function Quest75002:OnSubStart7500233(arg1)
    print("OnSubStart7500233")
end

function Quest75002:OnSubFinish7500233(arg1)
    print("OnSubFinish7500233")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 42)
end

function Quest75002:OnSubStart7500237(arg1)
    print("OnSubStart7500237")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7500237NNNTrigger", "Actor/Gadget/Q7500237NNNTrigger", 70900002, 0, {x = -1267.737, y = -763.78, z = 7879.148}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest75002:OnSubFinish7500237(arg1)
    print("OnSubFinish7500237")
end

function Quest75002:OnSubFailed7500237(arg1)
    print("OnSubFailed7500237")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest75002:OnSubStart7500234(arg1)
    print("OnSubStart7500234")
    actorMgr:CreateActorWithPos("Q7500234FailTrigger", "Actor/Gadget/Q7500234FailTrigger", 70900002, 0, {x = -1421.96, y = -763.78, z = 7999.319}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7500234FinishTrigger", "Actor/Gadget/Q7500234FinishTrigger", 70900002, 0, {x = -1423.814, y = -755.246, z = 8084.877}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
end

function Quest75002:OnSubFinish7500234(arg1)
    print("OnSubFinish7500234")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest75002:OnSubFailed7500234(arg1)
    print("OnSubFailed7500234")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest75002:OnSubStart7500235(arg1)
    print("OnSubStart7500235")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75002:OnSubFinish7500235(arg1)
    print("OnSubFinish7500235")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75002:OnSubStart7500218(arg1)
    print("OnSubStart7500218")
end

function Quest75002:OnSubFinish7500218(arg1)
    print("OnSubFinish7500218")
end

function Quest75002:OnSubStart7500228(arg1)
    print("OnSubStart7500228")
end

function Quest75002:OnSubFinish7500228(arg1)
    print("OnSubFinish7500228")
end

function Quest75002:OnSubStart7500210(arg1)
    print("OnSubStart7500210")
    actorMgr:CreateActorWithPos("Q7500210Trigger", "Actor/Gadget/Q7500210Trigger", 70900002, 0, {x = -1394.767, y = -73.277, z = 8063.858}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500210(arg1)
    print("OnSubFinish7500210")
end

function Quest75002:OnSubStart7500205(arg1)
    print("OnSubStart7500205")
    actorMgr:CreateActorWithPos("Q7500205Trigger", "Actor/Gadget/Q7500205Trigger", 70900002, 0, {x = -1363.509, y = -68.175, z = 8027.832}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500205(arg1)
    print("OnSubFinish7500205")
end

function Quest75002:OnSubStart7500206(arg1)
    print("OnSubStart7500206")
end

function Quest75002:OnSubFinish7500206(arg1)
    print("OnSubFinish7500206")
end

function Quest75002:OnSubStart7500202(arg1)
    print("OnSubStart7500202")
    actorMgr:CreateActorWithPos("Q7500202Trigger", "Actor/Gadget/Q7500202Trigger", 70900002, 0, {x = -1359.095, y = -74.288, z = 8086.063}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75002:OnSubFinish7500202(arg1)
    print("OnSubFinish7500202")
    this:SetNavigationByMainId(75002, true)
end

return Quest75002
