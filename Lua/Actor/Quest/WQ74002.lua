require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74002 = class("Quest74002", QuestActorProxy)
Quest74002.defaultAlias = "Quest74002"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74002:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400201"] = self.OnSubStart7400201,
        ["7400202"] = self.OnSubStart7400202,
        ["7400220"] = self.OnSubStart7400220,
        ["7400203"] = self.OnSubStart7400203,
        ["7400204"] = self.OnSubStart7400204,
        ["7400205"] = self.OnSubStart7400205,
        ["7400206"] = self.OnSubStart7400206,
        ["7400207"] = self.OnSubStart7400207,
        ["7400221"] = self.OnSubStart7400221,
        ["7400208"] = self.OnSubStart7400208,
        ["7400219"] = self.OnSubStart7400219,
        ["7400210"] = self.OnSubStart7400210,
        ["7400227"] = self.OnSubStart7400227,
        ["7400226"] = self.OnSubStart7400226,
        ["7400211"] = self.OnSubStart7400211,
        ["7400222"] = self.OnSubStart7400222,
        ["7400213"] = self.OnSubStart7400213,
        ["7400229"] = self.OnSubStart7400229,
        ["7400214"] = self.OnSubStart7400214,
        ["7400215"] = self.OnSubStart7400215,
        ["7400223"] = self.OnSubStart7400223,
        ["7400216"] = self.OnSubStart7400216,
        ["7400217"] = self.OnSubStart7400217,
        ["7400218"] = self.OnSubStart7400218,
        ["7400228"] = self.OnSubStart7400228,
        ["7400225"] = self.OnSubStart7400225
    }
end

function Quest74002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400201"] = self.OnSubFinish7400201,
        ["7400202"] = self.OnSubFinish7400202,
        ["7400220"] = self.OnSubFinish7400220,
        ["7400203"] = self.OnSubFinish7400203,
        ["7400204"] = self.OnSubFinish7400204,
        ["7400205"] = self.OnSubFinish7400205,
        ["7400206"] = self.OnSubFinish7400206,
        ["7400207"] = self.OnSubFinish7400207,
        ["7400221"] = self.OnSubFinish7400221,
        ["7400208"] = self.OnSubFinish7400208,
        ["7400219"] = self.OnSubFinish7400219,
        ["7400210"] = self.OnSubFinish7400210,
        ["7400227"] = self.OnSubFinish7400227,
        ["7400226"] = self.OnSubFinish7400226,
        ["7400211"] = self.OnSubFinish7400211,
        ["7400222"] = self.OnSubFinish7400222,
        ["7400213"] = self.OnSubFinish7400213,
        ["7400229"] = self.OnSubFinish7400229,
        ["7400214"] = self.OnSubFinish7400214,
        ["7400215"] = self.OnSubFinish7400215,
        ["7400223"] = self.OnSubFinish7400223,
        ["7400216"] = self.OnSubFinish7400216,
        ["7400217"] = self.OnSubFinish7400217,
        ["7400218"] = self.OnSubFinish7400218,
        ["7400228"] = self.OnSubFinish7400228,
        ["7400225"] = self.OnSubFinish7400225
    }
end

function Quest74002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74002:Start()
    print("Start")
end

function Quest74002:OnDestroy()
    print("OnDestroy")
end

function Quest74002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74002:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 10 then
        actorUtils.FinishQuestID(false, 7400227)
    elseif arg1 == 20 then
        actorUtils.FinishQuestID(false, 7400229)
    end
end

function Quest74002:OnSubStart7400201(arg1)
    print("OnSubStart7400201")
end

function Quest74002:OnSubFinish7400201(arg1)
    print("OnSubFinish7400201")
    self:SetNavigationByMainId(74002, true)
    this:NarratorOnlyTaskByData(datas.Narrator_7400202)
end

function Quest74002:OnSubStart7400202(arg1)
    print("OnSubStart7400202")
    actorMgr:CreateActorWithPos("Q7400202Trigger", "Actor/Gadget/Q7400202Trigger", 70900002, 0, {x = 3683.564, y = 358.348, z = 5025.668}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74002:OnSubFinish7400202(arg1)
    print("OnSubFinish7400202")
    self:SetNavigationByMainId(74002, true)
end

function Quest74002:OnSubStart7400220(arg1)
    print("OnSubStart7400220")
    actorMgr:CreateActorWithPos("Q7400220Trigger", "Actor/Gadget/Q7400220Trigger", 70900002, 0, {x = 3683.564, y = 358.348, z = 5025.668}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74002:OnSubFinish7400220(arg1)
    print("OnSubFinish7400220")
    self:SetNavigationByMainId(74002, true)
end

function Quest74002:OnSubStart7400203(arg1)
    print("OnSubStart7400203")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21146Data.id, 0)
        this:RequestInteraction(npcs.Npc21146Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74002:OnSubFinish7400203(arg1)
    print("OnSubFinish7400203")
    this:SafeDestroyQuestNpc(npcs.Npc21146Data.alias, 3)
    self:SetNavigationByMainId(74002, true)
end

function Quest74002:OnSubStart7400204(arg1)
    print("OnSubStart7400204")
end

function Quest74002:OnSubFinish7400204(arg1)
    print("OnSubFinish7400204")
end

function Quest74002:OnSubStart7400205(arg1)
    print("OnSubStart7400205")
end

function Quest74002:OnSubFinish7400205(arg1)
    print("OnSubFinish7400205")
end

function Quest74002:OnSubStart7400206(arg1)
    print("OnSubStart7400206")
end

function Quest74002:OnSubFinish7400206(arg1)
    print("OnSubFinish7400206")
end

function Quest74002:OnSubStart7400207(arg1)
    print("OnSubStart7400207")
end

function Quest74002:OnSubFinish7400207(arg1)
    print("OnSubFinish7400207")
end

function Quest74002:OnSubStart7400221(arg1)
    print("OnSubStart7400221")
    actorMgr:CreateActorWithPos("Q7400221Trigger", "Actor/Gadget/Q7400221Trigger", 70900002, 0, {x = 3754.762, y = 374.869, z = 4980.052}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74002:OnSubFinish7400221(arg1)
    print("OnSubFinish7400221")
end

function Quest74002:OnSubStart7400208(arg1)
    print("OnSubStart7400208")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21146Data.id, 0)
        this:RequestInteraction(npcs.Npc21146Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74002:OnSubFinish7400208(arg1)
    print("OnSubFinish7400208")
    this:SafeDestroyQuestNpc(npcs.Npc21146Data.alias, 3)
end

function Quest74002:OnSubStart7400219(arg1)
    print("OnSubStart7400219")
    this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20997Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20998Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20999Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21000Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400219Trigger", "Actor/Gadget/Q7400219Trigger", 70900002, 0, {x = 3776.499, y = 294.77, z = 4984.312}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74002:OnSubFinish7400219(arg1)
    print("OnSubFinish7400219")
end

function Quest74002:OnSubStart7400210(arg1)
    print("OnSubStart7400210")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc20997Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc20998Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74002:OnSubFinish7400210(arg1)
    print("OnSubFinish7400210")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20996Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20997Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20998Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20999Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21000Data.alias, 3)
end

function Quest74002:OnSubStart7400227(arg1)
    print("OnSubStart7400227")
end

function Quest74002:OnSubFinish7400227(arg1)
    print("OnSubFinish7400227")
end

function Quest74002:OnSubStart7400226(arg1)
    print("OnSubStart7400226")
    actorMgr:CreateActorWithPos("Q7400226Trigger", "Actor/Gadget/Q7400226Trigger", 70900002, 0, {x = 3802.705, y = 271.244, z = 4983.896}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74002:OnSubFinish7400226(arg1)
    print("OnSubFinish7400226")
end

function Quest74002:OnSubStart7400211(arg1)
    print("OnSubStart7400211")
end

function Quest74002:OnSubFinish7400211(arg1)
    print("OnSubFinish7400211")
end

function Quest74002:OnSubStart7400222(arg1)
    print("OnSubStart7400222")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20996Data.id, 7400222, 0, 20, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20997Data.id, 7400222, 0, 20, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20998Data.id, 7400222, 0, 20, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20999Data.id, 7400222, 0, 20, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21000Data.id, 7400222, 0, 20, 1)
    actorMgr:CreateActorWithPos("Q7400222Trigger", "Actor/Gadget/Q7400222Trigger", 70900002, 0, {x = 3800.506, y = 271.481, z = 4983.993}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74002:OnSubFinish7400222(arg1)
    print("OnSubFinish7400222")
end

function Quest74002:OnSubStart7400213(arg1)
    print("OnSubStart7400213")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc20997Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc20998Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc20999Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21000Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74002:OnSubFinish7400213(arg1)
    print("OnSubFinish7400213")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20996Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20997Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20998Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20999Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21000Data.alias, 3)
end

function Quest74002:OnSubStart7400229(arg1)
    print("OnSubStart7400229")
end

function Quest74002:OnSubFinish7400229(arg1)
    print("OnSubFinish7400229")
end

function Quest74002:OnSubStart7400214(arg1)
    print("OnSubStart7400214")
end

function Quest74002:OnSubFinish7400214(arg1)
    print("OnSubFinish7400214")
    this:NarratorOnlyTaskByData(datas.Narrator_7400201)
end

function Quest74002:OnSubStart7400215(arg1)
    print("OnSubStart7400215")
    actorMgr:CreateActorWithPos("Q7400215Trigger", "Actor/Gadget/Q7400215Trigger", 70900002, 0, {x = 3802.505, y = 318.857, z = 4983.846}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74002:OnSubFinish7400215(arg1)
    print("OnSubFinish7400215")
end

function Quest74002:OnSubStart7400223(arg1)
    print("OnSubStart7400223")
    actorMgr:CreateActorWithPos("Q7400223Trigger", "Actor/Gadget/Q7400223Trigger", 70900002, 0, {x = 3800.863, y = 318.185, z = 4983.981}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74002:OnSubFinish7400223(arg1)
    print("OnSubFinish7400223")
end

function Quest74002:OnSubStart7400216(arg1)
    print("OnSubStart7400216")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74002:OnSubFinish7400216(arg1)
    print("OnSubFinish7400216")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74002:OnSubStart7400217(arg1)
    print("OnSubStart7400217")
end

function Quest74002:OnSubFinish7400217(arg1)
    print("OnSubFinish7400217")
    this:NarratorOnlyTaskByData(datas.Narrator_7400203)
end

function Quest74002:OnSubStart7400218(arg1)
    print("OnSubStart7400218")
    actorMgr:CreateActorWithPos("Q7400218Trigger", "Actor/Gadget/Q7400218Trigger", 70900002, 0, {x = 3904.287, y = -120.861, z = 4941.751}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74002:OnSubFinish7400218(arg1)
    print("OnSubFinish7400218")
end

function Quest74002:OnSubStart7400228(arg1)
    print("OnSubStart7400228")
    actorMgr:CreateActorWithPos("Q7400228Trigger", "Actor/Gadget/Q7400228Trigger", 70900002, 0, {x = 3910.967, y = -123.93, z = 4932.85}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74002:OnSubFinish7400228(arg1)
    print("OnSubFinish7400228")
end

function Quest74002:OnSubStart7400225(arg1)
    print("OnSubStart7400225")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74002:OnSubFinish7400225(arg1)
    print("OnSubFinish7400225")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    self:SetNavigationByMainId(74003, true)
end

return Quest74002
