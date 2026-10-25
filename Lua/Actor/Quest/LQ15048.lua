require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15048 = class("Quest15048", QuestActorProxy)
Quest15048.defaultAlias = "Quest15048"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest15048:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest15048:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1504801"] = self.OnSubStart1504801,
        ["1504802"] = self.OnSubStart1504802,
        ["1504803"] = self.OnSubStart1504803,
        ["1504804"] = self.OnSubStart1504804,
        ["1504805"] = self.OnSubStart1504805,
        ["1504806"] = self.OnSubStart1504806,
        ["1504807"] = self.OnSubStart1504807,
        ["1504808"] = self.OnSubStart1504808,
        ["1504809"] = self.OnSubStart1504809
    }
end

function Quest15048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1504801"] = self.OnSubFinish1504801,
        ["1504802"] = self.OnSubFinish1504802,
        ["1504803"] = self.OnSubFinish1504803,
        ["1504804"] = self.OnSubFinish1504804,
        ["1504805"] = self.OnSubFinish1504805,
        ["1504806"] = self.OnSubFinish1504806,
        ["1504807"] = self.OnSubFinish1504807,
        ["1504808"] = self.OnSubFinish1504808,
        ["1504809"] = self.OnSubFinish1504809
    }
end

function Quest15048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1504805"] = self.OnSubFailed1504805}
end

function Quest15048:Start()
    print("Start")
end

function Quest15048:OnDestroy()
    print("OnDestroy")
end

function Quest15048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15048:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15048:OnMainPaused(arg1)
    print("OnMainPaused")
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc21844.id, 15048)
end

function Quest15048:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15048:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15048:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15048:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest15048:OnSubStart1504801(arg1)
    print("OnSubStart1504801")
    this:NpcCreateWithNpcTrigger(npcs.Npc21844.id, 0, 10, 1504801)
    this:CreateQuestNpc(arg1, npcs.Npc21856.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21871.id, 0, false, 0)
    actorUtils.AddQuestAvatarNpcMark(npcs.Npc21844.id, 15048, true, "UI_AvatarIcon_Side_BennettCostumeSummer")
end

function Quest15048:OnSubFinish1504801(arg1)
    print("OnSubFinish1504801")
    this:SafeDestroyQuestNpc(npcs.Npc21856.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21871.alias, 3)
    this:SetNavigationByMainId(15048, true)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc21844.id, 15048)
end

function Quest15048:OnSubStart1504802(arg1)
    print("OnSubStart1504802")
    this:CreateQuestNpc(arg1, npcs.Npc21844.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21844.alias, 15048):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21844.alias, 15048):DisableInteeHeadCtrl(true)
end

function Quest15048:OnSubFinish1504802(arg1)
    print("OnSubFinish1504802")
end

function Quest15048:OnSubStart1504803(arg1)
    print("OnSubStart1504803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504803, 0, 20, 1, npcs.Npc21844.id)
end

function Quest15048:OnSubFinish1504803(arg1)
    print("OnSubFinish1504803")
end

function Quest15048:OnSubStart1504804(arg1)
    print("OnSubStart1504804")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21844.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21844.alias, 15048):DisableInteeHeadCtrl(false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21856.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21856.alias, 15048):DisableInteeHeadCtrl(false)
end

function Quest15048:OnSubFinish1504804(arg1)
    print("OnSubFinish1504804")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21856.alias, 3)
end

function Quest15048:OnSubStart1504805(arg1)
    print("OnSubStart1504805")
end

function Quest15048:OnSubFinish1504805(arg1)
    print("OnSubFinish1504805")
end

function Quest15048:OnSubFailed1504805(arg1)
    print("OnSubFailed1504805")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end)
end

function Quest15048:OnSubStart1504806(arg1)
    print("OnSubStart1504806")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504806, 0, 30, 1, npcs.Npc21844.id)
end

function Quest15048:OnSubFinish1504806(arg1)
    print("OnSubFinish1504806")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
end

function Quest15048:OnSubStart1504807(arg1)
    print("OnSubStart1504807")
end

function Quest15048:OnSubFinish1504807(arg1)
    print("OnSubFinish1504807")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
end

function Quest15048:OnSubStart1504808(arg1)
    print("OnSubStart1504808")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21844.id, 0, 1504808, 20, true)
end

function Quest15048:OnSubFinish1504808(arg1)
    print("OnSubFinish1504808")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc21844.id, 15048)
end

function Quest15048:OnSubStart1504809(arg1)
    print("OnSubStart1504809")
end

function Quest15048:OnSubFinish1504809(arg1)
    print("OnSubFinish1504809")
end

return Quest15048
