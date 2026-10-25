require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75030 = class("Quest75030", QuestActorProxy)
Quest75030.defaultAlias = "Quest75030"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75030:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7503009"] = self.OnSubStart7503009,
        ["7503010"] = self.OnSubStart7503010,
        ["7503011"] = self.OnSubStart7503011,
        ["7503008"] = self.OnSubStart7503008,
        ["7503012"] = self.OnSubStart7503012,
        ["7503001"] = self.OnSubStart7503001,
        ["7503002"] = self.OnSubStart7503002,
        ["7503006"] = self.OnSubStart7503006,
        ["7503003"] = self.OnSubStart7503003,
        ["7503004"] = self.OnSubStart7503004,
        ["7503005"] = self.OnSubStart7503005,
        ["7503007"] = self.OnSubStart7503007
    }
end

function Quest75030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7503009"] = self.OnSubFinish7503009,
        ["7503010"] = self.OnSubFinish7503010,
        ["7503011"] = self.OnSubFinish7503011,
        ["7503008"] = self.OnSubFinish7503008,
        ["7503012"] = self.OnSubFinish7503012,
        ["7503001"] = self.OnSubFinish7503001,
        ["7503002"] = self.OnSubFinish7503002,
        ["7503006"] = self.OnSubFinish7503006,
        ["7503003"] = self.OnSubFinish7503003,
        ["7503004"] = self.OnSubFinish7503004,
        ["7503005"] = self.OnSubFinish7503005,
        ["7503007"] = self.OnSubFinish7503007
    }
end

function Quest75030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75030:Start()
    print("Start")
end

function Quest75030:OnDestroy()
    print("OnDestroy")
end

function Quest75030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75030:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75030:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75030:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7503010)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7503006)
    end
end

function Quest75030:OnSubStart7503009(arg1)
    print("OnSubStart7503009")
    this:CreateQuestNpc(arg1, npcs.Npc6137Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21706Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21707Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21733Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21733Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21734Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21734Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7503009Trigger", "Actor/Gadget/Q7503009Trigger", 70900002, 0, {x = -1527.76, y = 190.848, z = 9300.092}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7503002Trigger", "Actor/Gadget/Q7503002Trigger", 70900002, 0, {x = -1541.005, y = 188.373, z = 9301.332}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75030:OnSubFinish7503009(arg1)
    print("OnSubFinish7503009")
    this:ActorDestroy("Q7503002Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc21706Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21707Data.alias, 3)
end

function Quest75030:OnSubStart7503010(arg1)
    print("OnSubStart7503010")
end

function Quest75030:OnSubFinish7503010(arg1)
    print("OnSubFinish7503010")
    this:RequestInteraction(npcs.Npc21733Data.alias, "", true)
end

function Quest75030:OnSubStart7503011(arg1)
    print("OnSubStart7503011")
end

function Quest75030:OnSubFinish7503011(arg1)
    print("OnSubFinish7503011")
end

function Quest75030:OnSubStart7503008(arg1)
    print("OnSubStart7503008")
    this:CreateQuestNpc(arg1, npcs.Npc6137Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6137Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21733Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21734Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75030:OnSubFinish7503008(arg1)
    print("OnSubFinish7503008")
end

function Quest75030:OnSubStart7503012(arg1)
    print("OnSubStart7503012")
end

function Quest75030:OnSubFinish7503012(arg1)
    print("OnSubFinish7503012")
end

function Quest75030:OnSubStart7503001(arg1)
    print("OnSubStart7503001")
    this:CreateQuestNpc(arg1, npcs.Npc6137Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21584Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21733Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21733Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21734Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21734Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7503001Trigger", "Actor/Gadget/Q7503001Trigger", 70900002, 0, {x = -1544.437, y = 168.91, z = 9309.648}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75030:OnSubFinish7503001(arg1)
    print("OnSubFinish7503001")
    this:ActorDestroy("Q7503001Trigger")
    this:TransmitPlayerById(arg1, 5, nil, function(arg1)
        this:CallDelayByQuest("", 1, function(arg1)
            this:RequestInteraction(npcs.Npc6137Data.alias, "", true)
        end)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21584Data.alias, 3)
end

function Quest75030:OnSubStart7503002(arg1)
    print("OnSubStart7503002")
    this:GetQuestNpcActor(npcs.Npc21733Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21734Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75030:OnSubFinish7503002(arg1)
    print("OnSubFinish7503002")
    this:TransmitPlayerById(arg1, 3)
end

function Quest75030:OnSubStart7503006(arg1)
    print("OnSubStart7503006")
    this:GetQuestNpcActor(npcs.Npc21733Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21734Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75030:OnSubFinish7503006(arg1)
    print("OnSubFinish7503006")
end

function Quest75030:OnSubStart7503003(arg1)
    print("OnSubStart7503003")
    this:GetQuestNpcActor(npcs.Npc21733Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21734Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75030:OnSubFinish7503003(arg1)
    print("OnSubFinish7503003")
end

function Quest75030:OnSubStart7503004(arg1)
    print("OnSubStart7503004")
    this:GetQuestNpcActor(npcs.Npc21733Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21734Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q75030Trigger", "Actor/Gadget/Q75030Trigger", 70900002, 0, {x = -1536.127, y = 249.044, z = 9305.2}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75030:OnSubFinish7503004(arg1)
    print("OnSubFinish7503004")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6137Data.alias)
end

function Quest75030:OnSubStart7503005(arg1)
    print("OnSubStart7503005")
    this:GetQuestNpcActor(npcs.Npc21733Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21734Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75030:OnSubFinish7503005(arg1)
    print("OnSubFinish7503005")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 2)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6137Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21733Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21734Data.alias, 3)
end

function Quest75030:OnSubStart7503007(arg1)
    print("OnSubStart7503007")
    actorMgr:CreateActorWithPos("Q7503007Trigger", "Actor/Gadget/Q7503007Trigger", 70900002, 0, {x = -1427.954, y = 202.027, z = 9296.072}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75030:OnSubFinish7503007(arg1)
    print("OnSubFinish7503007")
end

return Quest75030
