require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76132 = class("Quest76132", QuestActorProxy)
Quest76132.defaultAlias = "Quest76132"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76132:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76132:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7613201"] = self.OnSubStart7613201,
        ["7613205"] = self.OnSubStart7613205,
        ["7613206"] = self.OnSubStart7613206,
        ["7613202"] = self.OnSubStart7613202,
        ["7613207"] = self.OnSubStart7613207,
        ["7613208"] = self.OnSubStart7613208,
        ["7613209"] = self.OnSubStart7613209,
        ["7613210"] = self.OnSubStart7613210,
        ["7613226"] = self.OnSubStart7613226,
        ["7613211"] = self.OnSubStart7613211,
        ["7613230"] = self.OnSubStart7613230,
        ["7613212"] = self.OnSubStart7613212,
        ["7613213"] = self.OnSubStart7613213,
        ["7613227"] = self.OnSubStart7613227,
        ["7613214"] = self.OnSubStart7613214,
        ["7613215"] = self.OnSubStart7613215,
        ["7613216"] = self.OnSubStart7613216,
        ["7613217"] = self.OnSubStart7613217,
        ["7613218"] = self.OnSubStart7613218,
        ["7613203"] = self.OnSubStart7613203,
        ["7613219"] = self.OnSubStart7613219,
        ["7613225"] = self.OnSubStart7613225,
        ["7613224"] = self.OnSubStart7613224,
        ["7613220"] = self.OnSubStart7613220,
        ["7613222"] = self.OnSubStart7613222,
        ["7613231"] = self.OnSubStart7613231,
        ["7613232"] = self.OnSubStart7613232,
        ["7613221"] = self.OnSubStart7613221,
        ["7613223"] = self.OnSubStart7613223
    }
end

function Quest76132:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7613201"] = self.OnSubFinish7613201,
        ["7613205"] = self.OnSubFinish7613205,
        ["7613206"] = self.OnSubFinish7613206,
        ["7613202"] = self.OnSubFinish7613202,
        ["7613207"] = self.OnSubFinish7613207,
        ["7613208"] = self.OnSubFinish7613208,
        ["7613209"] = self.OnSubFinish7613209,
        ["7613210"] = self.OnSubFinish7613210,
        ["7613226"] = self.OnSubFinish7613226,
        ["7613211"] = self.OnSubFinish7613211,
        ["7613230"] = self.OnSubFinish7613230,
        ["7613212"] = self.OnSubFinish7613212,
        ["7613213"] = self.OnSubFinish7613213,
        ["7613227"] = self.OnSubFinish7613227,
        ["7613214"] = self.OnSubFinish7613214,
        ["7613215"] = self.OnSubFinish7613215,
        ["7613216"] = self.OnSubFinish7613216,
        ["7613217"] = self.OnSubFinish7613217,
        ["7613218"] = self.OnSubFinish7613218,
        ["7613203"] = self.OnSubFinish7613203,
        ["7613219"] = self.OnSubFinish7613219,
        ["7613225"] = self.OnSubFinish7613225,
        ["7613224"] = self.OnSubFinish7613224,
        ["7613220"] = self.OnSubFinish7613220,
        ["7613222"] = self.OnSubFinish7613222,
        ["7613231"] = self.OnSubFinish7613231,
        ["7613232"] = self.OnSubFinish7613232,
        ["7613221"] = self.OnSubFinish7613221,
        ["7613223"] = self.OnSubFinish7613223
    }
end

function Quest76132:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7613222"] = self.OnSubFailed7613222,
        ["7613231"] = self.OnSubFailed7613231,
        ["7613221"] = self.OnSubFailed7613221
    }
end

function Quest76132:Start()
    print("Start")
end

function Quest76132:OnDestroy()
    print("OnDestroy")
end

function Quest76132:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76132:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76132:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76132:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7613201Trigger", nil)
    this:ActorDestroy("Q7613207Trigger", nil)
    this:ActorDestroy("Q7613210Trigger", nil)
    this:ActorDestroy("Q7613211Trigger", nil)
    this:ActorDestroy("Q7613217Trigger", nil)
end

function Quest76132:ActorDestroy(arg1, arg2)
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

function Quest76132:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest76132:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76132:InvokeOnInteraction(arg1)
    if arg1 == 7613206 then
        this:SetGlobalObjectState("Flying", 0)
    end
end

function Quest76132:OnSubStart7613201(arg1)
    print("OnSubStart7613201")
    this:CreateQuestNpc(arg1, npcs.Npc22423.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7613201Trigger", "Actor/Gadget/Q7613201Trigger", 70900002, 0, points._Q7613201TriggerPoint_.pos, points._Q7613201TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76132:OnSubFinish7613201(arg1)
    print("OnSubFinish7613201")
end

function Quest76132:OnSubStart7613205(arg1)
    print("OnSubStart7613205")
    this:NpcCreateWithNoBlackData(7613205, 0, npcs.Npc22631.id, 0, 60, 7613205, datas.NoBlack_01)
end

function Quest76132:OnSubFinish7613205(arg1)
    print("OnSubFinish7613205")
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 3)
    this:SetNavigationByMainId(76132, true)
end

function Quest76132:OnSubStart7613206(arg1)
    print("OnSubStart7613206")
    this:CreateQuestNpc(arg1, npcs.Npc22423.id, 0, false, 0)
end

function Quest76132:OnSubFinish7613206(arg1)
    print("OnSubFinish7613206")
    this:SetNavigationByMainId(76132, true)
end

function Quest76132:OnSubStart7613202(arg1)
    print("OnSubStart7613202")
    this:NpcCreateWithNoBlackData(7613202, 0, npcs.Npc22631.id, 0, 100, 7613202, datas.NoBlack_01)
end

function Quest76132:OnSubFinish7613202(arg1)
    print("OnSubFinish7613202")
    this:SafeDestroyQuestNpc(npcs.Npc22423.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 3)
    this:SetNavigationByMainId(76132, true)
end

function Quest76132:OnSubStart7613207(arg1)
    print("OnSubStart7613207")
    actorMgr:CreateActorWithPos("Q7613207Trigger", "Actor/Gadget/Q7613207Trigger", 70900002, 0, points._Q7613207TriggerPoint_.pos, points._Q7613207TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76132:OnSubFinish7613207(arg1)
    print("OnSubFinish7613207")
    this:SetNavigationByMainId(76132, true)
end

function Quest76132:OnSubStart7613208(arg1)
    print("OnSubStart7613208")
end

function Quest76132:OnSubFinish7613208(arg1)
    print("OnSubFinish7613208")
    this:SetNavigationByMainId(76132, true)
end

function Quest76132:OnSubStart7613209(arg1)
    print("OnSubStart7613209")
end

function Quest76132:OnSubFinish7613209(arg1)
    print("OnSubFinish7613209")
    this:SetNavigationByMainId(76132, true)
end

function Quest76132:OnSubStart7613210(arg1)
    print("OnSubStart7613210")
    actorMgr:CreateActorWithPos("Q7613210Trigger", "Actor/Gadget/Q7613210Trigger", 70900002, 0, points._Q7613210TriggerPoint_.pos, points._Q7613210TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76132:OnSubFinish7613210(arg1)
    print("OnSubFinish7613210")
    this:SetNavigationByMainId(76132, true)
end

function Quest76132:OnSubStart7613226(arg1)
    print("OnSubStart7613226")
    this:NpcCreateWithNoBlackData(7613226, 0, npcs.Npc22631.id, 0, 50, 7613204, datas.NoBlack_01)
end

function Quest76132:OnSubFinish7613226(arg1)
    print("OnSubFinish7613226")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 3)
    this:SetNavigationByMainId(76132, true)
end

function Quest76132:OnSubStart7613211(arg1)
    print("OnSubStart7613211")
    this:NpcCreateWithNoBlackData(7613211, 0, npcs.Npc22631.id, 0, 20, 7613215, datas.NoBlack_01)
    actorMgr:CreateActorWithPos("Q7613211Trigger", "Actor/Gadget/Q7613211Trigger", 70900002, 0, points._Q7613211TriggerPoint_.pos, points._Q7613211TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76132:OnSubFinish7613211(arg1)
    print("OnSubFinish7613211")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 3)
    this:SetNavigationByMainId(76132, true)
end

function Quest76132:OnSubStart7613230(arg1)
    print("OnSubStart7613230")
end

function Quest76132:OnSubFinish7613230(arg1)
    print("OnSubFinish7613230")
end

function Quest76132:OnSubStart7613212(arg1)
    print("OnSubStart7613212")
    this:NpcCreateWithNoBlackData(7613212, 0, npcs.Npc22631.id, 0, 50, 7613212, datas.NoBlack_01)
end

function Quest76132:OnSubFinish7613212(arg1)
    print("OnSubFinish7613212")
    this:SafeDestroyQuestNpc(npcs.Npc22423.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 3)
end

function Quest76132:OnSubStart7613213(arg1)
    print("OnSubStart7613213")
end

function Quest76132:OnSubFinish7613213(arg1)
    print("OnSubFinish7613213")
end

function Quest76132:OnSubStart7613227(arg1)
    print("OnSubStart7613227")
    this:NpcCreateWithNoBlackData(7613227, 0, npcs.Npc22631.id, 0, 50, 7613219, datas.NoBlack_01)
end

function Quest76132:OnSubFinish7613227(arg1)
    print("OnSubFinish7613227")
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 3)
end

function Quest76132:OnSubStart7613214(arg1)
    print("OnSubStart7613214")
    this:NpcCreateWithNpcTrigger(npcs.Npc22423.id, 0, 8, 7613214)
end

function Quest76132:OnSubFinish7613214(arg1)
    print("OnSubFinish7613214")
    this:SafeDestroyQuestNpc(npcs.Npc22423.alias, 3)
end

function Quest76132:OnSubStart7613215(arg1)
    print("OnSubStart7613215")
end

function Quest76132:OnSubFinish7613215(arg1)
    print("OnSubFinish7613215")
end

function Quest76132:OnSubStart7613216(arg1)
    print("OnSubStart7613216")
end

function Quest76132:OnSubFinish7613216(arg1)
    print("OnSubFinish7613216")
end

function Quest76132:OnSubStart7613217(arg1)
    print("OnSubStart7613217")
    actorMgr:CreateActorWithPos("Q7613217Trigger", "Actor/Gadget/Q7613217Trigger", 70900002, 0, points._Q7613217TriggerPoint_.pos, points._Q7613217TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76132:OnSubFinish7613217(arg1)
    print("OnSubFinish7613217")
end

function Quest76132:OnSubStart7613218(arg1)
    print("OnSubStart7613218")
end

function Quest76132:OnSubFinish7613218(arg1)
    print("OnSubFinish7613218")
end

function Quest76132:OnSubStart7613203(arg1)
    print("OnSubStart7613203")
    this:NpcCreateWithNoBlackData(7613203, 0, npcs.Npc22631.id, 0, 20, 7613210, datas.NoBlack_01)
end

function Quest76132:OnSubFinish7613203(arg1)
    print("OnSubFinish7613203")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 3)
end

function Quest76132:OnSubStart7613219(arg1)
    print("OnSubStart7613219")
end

function Quest76132:OnSubFinish7613219(arg1)
    print("OnSubFinish7613219")
end

function Quest76132:OnSubStart7613225(arg1)
    print("OnSubStart7613225")
    this:NpcCreateWithNoBlackData(7613225, 0, npcs.Npc22631.id, 0, 30, 7613201, datas.NoBlack_01)
end

function Quest76132:OnSubFinish7613225(arg1)
    print("OnSubFinish7613225")
    this:SafeDestroyQuestNpc(npcs.Npc22269.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 3)
end

function Quest76132:OnSubStart7613224(arg1)
    print("OnSubStart7613224")
end

function Quest76132:OnSubFinish7613224(arg1)
    print("OnSubFinish7613224")
end

function Quest76132:OnSubStart7613220(arg1)
    print("OnSubStart7613220")
    this:PlayCutsceneIndex(7613220, function(arg1)
        if this:TransmitPlayerWithQuestIdByData(7613220, 1, datas.TransmitData_3, function(arg1)
            actorUtils.FinishQuestID(false, 7613220)
        end, nil, nil) then
            this:DestroyGlobalObject("Flying")
            this:CreateGlobalObject("Flying", "ART/UI/InLevelUI/CabinLoadingUI/CabinLoadingUI_Main_01", {x = 0, y = 20000, z = 0}, {x = 0, y = 0, z = 0})
            this:SetGlobalObjectState("Flying", 1)
        end
    end, nil, nil, false)
end

function Quest76132:OnSubFinish7613220(arg1)
    print("OnSubFinish7613220")
end

function Quest76132:OnSubStart7613222(arg1)
    print("OnSubStart7613222")
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22399.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc22631.id, 0, 60, 7613222)
end

function Quest76132:OnSubFinish7613222(arg1)
    print("OnSubFinish7613222")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22399.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 102)
    this:DestroyGlobalObject("Flying")
end

function Quest76132:OnSubFailed7613222(arg1)
    print("OnSubFailed7613222")
    this:RecycleAllRes()
end

function Quest76132:OnSubStart7613231(arg1)
    print("OnSubStart7613231")
end

function Quest76132:OnSubFinish7613231(arg1)
    print("OnSubFinish7613231")
end

function Quest76132:OnSubFailed7613231(arg1)
    print("OnSubFailed7613231")
    this:RecycleAllRes()
end

function Quest76132:OnSubStart7613232(arg1)
    print("OnSubStart7613232")
    this:NpcCreateWithNpcTrigger(npcs.Npc22631.id, 0, 30, 7613232)
end

function Quest76132:OnSubFinish7613232(arg1)
    print("OnSubFinish7613232")
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 102)
end

function Quest76132:OnSubStart7613221(arg1)
    print("OnSubStart7613221")
    this:NpcCreateWithNoBlackData(7613221, 0, npcs.Npc22631.id, 0, 100, 7613203, datas.NoBlack_01)
end

function Quest76132:OnSubFinish7613221(arg1)
    print("OnSubFinish7613221")
    this:SafeDestroyQuestNpc(npcs.Npc22399.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22269.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22631.alias, 102)
end

function Quest76132:OnSubFailed7613221(arg1)
    print("OnSubFailed7613221")
    this:RecycleAllRes()
end

function Quest76132:OnSubStart7613223(arg1)
    print("OnSubStart7613223")
    this:PlayCutsceneIndex(7613221, function(arg1)
        this:TransmitPlayerWithQuestIdByData(7613221, 2, datas.TransmitData_2, function(arg1)
            actorUtils.FinishQuestID(false, 7613223)
        end, nil, nil)
    end, nil, nil, false)
end

function Quest76132:OnSubFinish7613223(arg1)
    print("OnSubFinish7613223")
    this:SetNavigationByMainId(76127, true)
end

return Quest76132
