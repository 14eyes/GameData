require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40187 = class("Quest40187", QuestActorProxy)
Quest40187.defaultAlias = "Quest40187"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40187:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40187:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4018701"] = self.OnSubStart4018701,
        ["4018702"] = self.OnSubStart4018702,
        ["4018703"] = self.OnSubStart4018703,
        ["4018704"] = self.OnSubStart4018704,
        ["4018705"] = self.OnSubStart4018705,
        ["4018706"] = self.OnSubStart4018706,
        ["4018707"] = self.OnSubStart4018707,
        ["4018708"] = self.OnSubStart4018708
    }
end

function Quest40187:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4018701"] = self.OnSubFinish4018701,
        ["4018702"] = self.OnSubFinish4018702,
        ["4018703"] = self.OnSubFinish4018703,
        ["4018704"] = self.OnSubFinish4018704,
        ["4018705"] = self.OnSubFinish4018705,
        ["4018706"] = self.OnSubFinish4018706,
        ["4018707"] = self.OnSubFinish4018707,
        ["4018708"] = self.OnSubFinish4018708
    }
end

function Quest40187:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40187:Start()
    print("Start")
end

function Quest40187:OnDestroy()
    print("OnDestroy")
end

function Quest40187:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40187:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40187:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    this:DestroyNpcTrigger("Q4018704N1046Trigger")
    this:DestroyNpcTrigger("Q4018702N1012Trigger")
    this:DestroyNpcTrigger("Q4018705N10204Trigger")
    this:DestroyNpcTrigger("Q4018706N1031Trigger")
    this:DestroyNpcTrigger("Q4018707N1016Trigger")
    this:DestroyNpcTrigger("Q4018708N1083Trigger")
end

function Quest40187:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40187:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40187:OnSubStart4018701(arg1)
    print("OnSubStart4018701")
end

function Quest40187:OnSubFinish4018701(arg1)
    print("OnSubFinish4018701")
end

function Quest40187:OnSubStart4018702(arg1)
    print("OnSubStart4018702")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Xiangling.id, 0, 4018702, 30, true)
end

function Quest40187:OnSubFinish4018702(arg1)
    print("OnSubFinish4018702")
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
end

function Quest40187:OnSubStart4018703(arg1)
    print("OnSubStart4018703")
end

function Quest40187:OnSubFinish4018703(arg1)
    print("OnSubFinish4018703")
end

function Quest40187:OnSubStart4018704(arg1)
    print("OnSubStart4018704")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018704, 0, 30, 1, npcs.Npc1046.id)
end

function Quest40187:OnSubFinish4018704(arg1)
    print("OnSubFinish4018704")
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018408, nil, nil, nil)
end

function Quest40187:OnSubStart4018705(arg1)
    print("OnSubStart4018705")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Xiao.id, 0, 4018705, 30, true)
end

function Quest40187:OnSubFinish4018705(arg1)
    print("OnSubFinish4018705")
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018408, nil, nil, nil)
end

function Quest40187:OnSubStart4018706(arg1)
    print("OnSubStart4018706")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1031.id, 0, 4018706, 30, true)
end

function Quest40187:OnSubFinish4018706(arg1)
    print("OnSubFinish4018706")
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018408, nil, nil, nil)
end

function Quest40187:OnSubStart4018707(arg1)
    print("OnSubStart4018707")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1016.id, 0, 4018707, 30, true)
end

function Quest40187:OnSubFinish4018707(arg1)
    print("OnSubFinish4018707")
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018408, nil, nil, nil)
end

function Quest40187:OnSubStart4018708(arg1)
    print("OnSubStart4018708")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1083.id, 0, 4018708, 30, true)
end

function Quest40187:OnSubFinish4018708(arg1)
    print("OnSubFinish4018708")
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018408, nil, nil, nil)
end

return Quest40187
