require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76127 = class("Quest76127", QuestActorProxy)
Quest76127.defaultAlias = "Quest76127"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76127:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76127:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7612729"] = self.OnSubStart7612729,
        ["7612701"] = self.OnSubStart7612701,
        ["7612728"] = self.OnSubStart7612728,
        ["7612702"] = self.OnSubStart7612702,
        ["7612704"] = self.OnSubStart7612704,
        ["7612705"] = self.OnSubStart7612705,
        ["7612736"] = self.OnSubStart7612736,
        ["7612707"] = self.OnSubStart7612707,
        ["7612708"] = self.OnSubStart7612708,
        ["7612709"] = self.OnSubStart7612709,
        ["7612710"] = self.OnSubStart7612710,
        ["7612711"] = self.OnSubStart7612711,
        ["7612712"] = self.OnSubStart7612712,
        ["7612731"] = self.OnSubStart7612731,
        ["7612732"] = self.OnSubStart7612732,
        ["7612706"] = self.OnSubStart7612706,
        ["7612713"] = self.OnSubStart7612713,
        ["7612734"] = self.OnSubStart7612734,
        ["7612714"] = self.OnSubStart7612714,
        ["7612715"] = self.OnSubStart7612715,
        ["7612718"] = self.OnSubStart7612718,
        ["7612719"] = self.OnSubStart7612719,
        ["7612720"] = self.OnSubStart7612720,
        ["7612721"] = self.OnSubStart7612721,
        ["7612722"] = self.OnSubStart7612722,
        ["7612735"] = self.OnSubStart7612735,
        ["7612723"] = self.OnSubStart7612723,
        ["7612724"] = self.OnSubStart7612724,
        ["7612726"] = self.OnSubStart7612726
    }
end

function Quest76127:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7612729"] = self.OnSubFinish7612729,
        ["7612701"] = self.OnSubFinish7612701,
        ["7612728"] = self.OnSubFinish7612728,
        ["7612702"] = self.OnSubFinish7612702,
        ["7612704"] = self.OnSubFinish7612704,
        ["7612705"] = self.OnSubFinish7612705,
        ["7612736"] = self.OnSubFinish7612736,
        ["7612707"] = self.OnSubFinish7612707,
        ["7612708"] = self.OnSubFinish7612708,
        ["7612709"] = self.OnSubFinish7612709,
        ["7612710"] = self.OnSubFinish7612710,
        ["7612711"] = self.OnSubFinish7612711,
        ["7612712"] = self.OnSubFinish7612712,
        ["7612731"] = self.OnSubFinish7612731,
        ["7612732"] = self.OnSubFinish7612732,
        ["7612706"] = self.OnSubFinish7612706,
        ["7612713"] = self.OnSubFinish7612713,
        ["7612734"] = self.OnSubFinish7612734,
        ["7612714"] = self.OnSubFinish7612714,
        ["7612715"] = self.OnSubFinish7612715,
        ["7612718"] = self.OnSubFinish7612718,
        ["7612719"] = self.OnSubFinish7612719,
        ["7612720"] = self.OnSubFinish7612720,
        ["7612721"] = self.OnSubFinish7612721,
        ["7612722"] = self.OnSubFinish7612722,
        ["7612735"] = self.OnSubFinish7612735,
        ["7612723"] = self.OnSubFinish7612723,
        ["7612724"] = self.OnSubFinish7612724,
        ["7612726"] = self.OnSubFinish7612726
    }
end

function Quest76127:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76127:Start()
    print("Start")
end

function Quest76127:OnDestroy()
    print("OnDestroy")
end

function Quest76127:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76127:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76127:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76127:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7612704Trigger", 0)
    this:ActorDestroy("Q7612705Trigger", 0)
    this:ActorDestroy("Q7612718Trigger", 0)
    this:ActorDestroy("Q7612724Trigger", 0)
    this:ActorDestroy("Q7612707Trigger", 0)
    this:ActorDestroy("Q7612711Trigger", 0)
    this:ActorDestroy("Q7612713Trigger", 0)
    this:ActorDestroy("Q7612715Trigger", 0)
    this:ActorDestroy("Q7612731Trigger", 0)
    this:ActorDestroy("Q7612732Trigger", 76127)
end

function Quest76127:ActorDestroy(arg1, arg2)
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

function Quest76127:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest76127:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest76127:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76127:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76127:OnMainPaused(arg1)
    this:ActorDestroy("Q7612703Trigger")
    this:ActorDestroy("Q7612704Trigger")
    this:ActorDestroy("Q7612705Trigger")
    this:ActorDestroy("Q7612718Trigger")
    this:ActorDestroy("Q7612709Trigger")
    this:ActorDestroy("Q7612711Trigger")
    this:ActorDestroy("Q7612715Trigger")
    this:ActorDestroy("Q7612724Trigger")
end

function Quest76127:CustomFunction() end

function Quest76127:OnSubStart7612729(arg1)
    print("OnSubStart7612729")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc22348.id, 0, 7612729, 65, true)
end

function Quest76127:OnSubFinish7612729(arg1)
    print("OnSubFinish7612729")
    this:SafeDestroyQuestNpc(npcs.Npc22348.alias, 102)
end

function Quest76127:OnSubStart7612701(arg1)
    print("OnSubStart7612701")
    this:SetNavigationByMainId(76127, true)
    globalActor:DisablePaimonInProfilePage({102})
end

function Quest76127:OnSubFinish7612701(arg1)
    print("OnSubFinish7612701")
    actorUtils.BanUIByQuest(1, false, 76127)
    globalActor:ResumePaimonInProfilePage({102})
end

function Quest76127:OnSubStart7612728(arg1)
    print("OnSubStart7612728")
end

function Quest76127:OnSubFinish7612728(arg1)
    print("OnSubFinish7612728")
    actorUtils.BanUIByQuest(1, true, 76127)
end

function Quest76127:OnSubStart7612702(arg1)
    print("OnSubStart7612702")
    this:NpcCreateWithNoBlack(npcs.Npc22348.id, 0, 50, 7612702, false, 7612702)
    globalActor:ResumePaimonInProfilePage({102})
end

function Quest76127:OnSubFinish7612702(arg1)
    print("OnSubFinish7612702")
    this:SafeDestroyQuestNpc(npcs.Npc22348.alias, 102)
end

function Quest76127:OnSubStart7612704(arg1)
    print("OnSubStart7612704")
    actorMgr:CreateActorWithPos("Q7612704Trigger", "Actor/Gadget/Q7612704Trigger", 70900002, 0, points._Q7612704TriggerPoint_.pos, points._Q7612704TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76127:OnSubFinish7612704(arg1)
    print("OnSubFinish7612704")
end

function Quest76127:OnSubStart7612705(arg1)
    print("OnSubStart7612705")
    actorMgr:CreateActorWithPos("Q7612705Trigger", "Actor/Gadget/Q7612705Trigger", 70900002, 0, points._Q7612705TriggerPoint_.pos, points._Q7612705TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76127:OnSubFinish7612705(arg1)
    print("OnSubFinish7612705")
end

function Quest76127:OnSubStart7612736(arg1)
    print("OnSubStart7612736")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7612736, 0, 80, 1, npcs.Npc22348.id)
end

function Quest76127:OnSubFinish7612736(arg1)
    print("OnSubFinish7612736")
    this:SafeDestroyQuestNpc(npcs.Npc22348.alias, 102)
end

function Quest76127:OnSubStart7612707(arg1)
    print("OnSubStart7612707")
    actorMgr:CreateActorWithPos("Q7612707Trigger", "Actor/Gadget/Q7612707Trigger", 70900002, 0, points._Q7612707TriggerPoint_.pos, points._Q7612707TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76127:OnSubFinish7612707(arg1)
    print("OnSubFinish7612707")
end

function Quest76127:OnSubStart7612708(arg1)
    print("OnSubStart7612708")
end

function Quest76127:OnSubFinish7612708(arg1)
    print("OnSubFinish7612708")
end

function Quest76127:OnSubStart7612709(arg1)
    print("OnSubStart7612709")
end

function Quest76127:OnSubFinish7612709(arg1)
    print("OnSubFinish7612709")
end

function Quest76127:OnSubStart7612710(arg1)
    print("OnSubStart7612710")
end

function Quest76127:OnSubFinish7612710(arg1)
    print("OnSubFinish7612710")
end

function Quest76127:OnSubStart7612711(arg1)
    print("OnSubStart7612711")
    actorMgr:CreateActorWithPos("Q7612711Trigger", "Actor/Gadget/Q7612711Trigger", 70900002, 0, points._Q7612711TriggerPoint_.pos, points._Q7612711TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76127:OnSubFinish7612711(arg1)
    print("OnSubFinish7612711")
end

function Quest76127:OnSubStart7612712(arg1)
    print("OnSubStart7612712")
end

function Quest76127:OnSubFinish7612712(arg1)
    print("OnSubFinish7612712")
end

function Quest76127:OnSubStart7612731(arg1)
    print("OnSubStart7612731")
    this:CreateQuestNpc(arg1, npcs.Npc22255.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22255.alias, 76127):DoFreeStyle(6, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7612731Trigger", "Actor/Gadget/Q7612731Trigger", 70900002, 0, points._Q7612731TriggerPoint_.pos, points._Q7612731TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76127:OnSubFinish7612731(arg1)
    print("OnSubFinish7612731")
end

function Quest76127:OnSubStart7612732(arg1)
    print("OnSubStart7612732")
    this:CreateQuestNpc(arg1, npcs.Npc22255.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22255.alias, 76127):DoFreeStyle(6, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7612732Trigger", "Actor/Gadget/Q7612732Trigger", 70900002, 0, points._Q7612732TriggerPoint_.pos, points._Q7612732TriggerPoint_.rot, true, false, 102, nil, 0, 76127)
end

function Quest76127:OnSubFinish7612732(arg1)
    print("OnSubFinish7612732")
end

function Quest76127:OnSubStart7612706(arg1)
    print("OnSubStart7612706")
    this:NpcCreateWithNoBlackData(7612706, 0, npcs.Npc22255.id, 0, 10, 7612706, datas.Noblack)
    this:GetQuestNpcActor(npcs.Npc22255.alias, 76127):DoFreeStyle(6, true, nil, true, true, false, true)
end

function Quest76127:OnSubFinish7612706(arg1)
    print("OnSubFinish7612706")
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
end

function Quest76127:OnSubStart7612713(arg1)
    print("OnSubStart7612713")
    actorMgr:CreateActorWithPos("Q7612713Trigger", "Actor/Gadget/Q7612713Trigger", 70900002, 0, points._Q7612713TriggerPoint_.pos, points._Q7612713TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76127:OnSubFinish7612713(arg1)
    print("OnSubFinish7612713")
end

function Quest76127:OnSubStart7612734(arg1)
    print("OnSubStart7612734")
    this:NpcCreateWithNoBlackData(7612734, 0, npcs.Npc22348.id, 0, 10, 7612703, datas.Noblack)
end

function Quest76127:OnSubFinish7612734(arg1)
    print("OnSubFinish7612734")
    this:SafeDestroyQuestNpc(npcs.Npc22348.alias, 102)
end

function Quest76127:OnSubStart7612714(arg1)
    print("OnSubStart7612714")
end

function Quest76127:OnSubFinish7612714(arg1)
    print("OnSubFinish7612714")
end

function Quest76127:OnSubStart7612715(arg1)
    print("OnSubStart7612715")
    actorMgr:CreateActorWithPos("Q7612715Trigger", "Actor/Gadget/Q7612715Trigger", 70900002, 0, points._Q7612715TriggerPoint_.pos, points._Q7612715TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76127:OnSubFinish7612715(arg1)
    print("OnSubFinish7612715")
end

function Quest76127:OnSubStart7612718(arg1)
    print("OnSubStart7612718")
    actorMgr:CreateActorWithPos("Q7612718Trigger", "Actor/Gadget/Q7612718Trigger", 70900002, 0, points._Q7612718TriggerPoint_.pos, points._Q7612718TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76127:OnSubFinish7612718(arg1)
    print("OnSubFinish7612718")
end

function Quest76127:OnSubStart7612719(arg1)
    print("OnSubStart7612719")
end

function Quest76127:OnSubFinish7612719(arg1)
    print("OnSubFinish7612719")
end

function Quest76127:OnSubStart7612720(arg1)
    print("OnSubStart7612720")
end

function Quest76127:OnSubFinish7612720(arg1)
    print("OnSubFinish7612720")
end

function Quest76127:OnSubStart7612721(arg1)
    print("OnSubStart7612721")
    this:NpcCreateWithNoBlackData(7612721, 0, npcs.Npc22348.id, 0, 15, 7612721, datas.Noblack)
end

function Quest76127:OnSubFinish7612721(arg1)
    print("OnSubFinish7612721")
    this:SafeDestroyQuestNpc(npcs.Npc22348.alias, 102)
end

function Quest76127:OnSubStart7612722(arg1)
    print("OnSubStart7612722")
end

function Quest76127:OnSubFinish7612722(arg1)
    print("OnSubFinish7612722")
end

function Quest76127:OnSubStart7612735(arg1)
    print("OnSubStart7612735")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7612735, 0, 10, 0, npcs.Npc22255.id)
end

function Quest76127:OnSubFinish7612735(arg1)
    print("OnSubFinish7612735")
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
end

function Quest76127:OnSubStart7612723(arg1)
    print("OnSubStart7612723")
end

function Quest76127:OnSubFinish7612723(arg1)
    print("OnSubFinish7612723")
end

function Quest76127:OnSubStart7612724(arg1)
    print("OnSubStart7612724")
    actorMgr:CreateActorWithPos("Q7612724Trigger", "Actor/Gadget/Q7612724Trigger", 70900002, 0, points._Q7612724TriggerPoint_.pos, points._Q7612724TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76127:OnSubFinish7612724(arg1)
    print("OnSubFinish7612724")
end

function Quest76127:OnSubStart7612726(arg1)
    print("OnSubStart7612726")
    this:NpcCreateWithNoBlackData(7612726, 0, npcs.Npc22348.id, 0, 15, 7612726, datas.Noblack)
end

function Quest76127:OnSubFinish7612726(arg1)
    print("OnSubFinish7612726")
    this:SafeDestroyQuestNpc(npcs.Npc22348.alias, 102)
    this:SetNavigationByMainId(76133, true)
end

return Quest76127
