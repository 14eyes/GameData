require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77110 = class("Quest77110", QuestActorProxy)
Quest77110.defaultAlias = "Quest77110"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77110:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77110:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7711001"] = self.OnSubStart7711001,
        ["7711012"] = self.OnSubStart7711012,
        ["7711003"] = self.OnSubStart7711003,
        ["7711004"] = self.OnSubStart7711004,
        ["7711005"] = self.OnSubStart7711005,
        ["7711006"] = self.OnSubStart7711006,
        ["7711015"] = self.OnSubStart7711015,
        ["7711016"] = self.OnSubStart7711016,
        ["7711007"] = self.OnSubStart7711007,
        ["7711014"] = self.OnSubStart7711014,
        ["7711008"] = self.OnSubStart7711008,
        ["7711009"] = self.OnSubStart7711009,
        ["7711010"] = self.OnSubStart7711010,
        ["7711011"] = self.OnSubStart7711011
    }
end

function Quest77110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7711001"] = self.OnSubFinish7711001,
        ["7711012"] = self.OnSubFinish7711012,
        ["7711003"] = self.OnSubFinish7711003,
        ["7711004"] = self.OnSubFinish7711004,
        ["7711005"] = self.OnSubFinish7711005,
        ["7711006"] = self.OnSubFinish7711006,
        ["7711015"] = self.OnSubFinish7711015,
        ["7711016"] = self.OnSubFinish7711016,
        ["7711007"] = self.OnSubFinish7711007,
        ["7711014"] = self.OnSubFinish7711014,
        ["7711008"] = self.OnSubFinish7711008,
        ["7711009"] = self.OnSubFinish7711009,
        ["7711010"] = self.OnSubFinish7711010,
        ["7711011"] = self.OnSubFinish7711011
    }
end

function Quest77110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77110:Start()
    print("Start")
end

function Quest77110:OnDestroy()
    print("OnDestroy")
end

function Quest77110:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77110:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77110:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7711001N22308Trigger")
    this:DestroyNpcTrigger("Q7711003N22308Trigger")
    this:DestroyNpcTrigger("Q7711009N22308Trigger")
    this:ActorDestroy("Q7711002Trigger", 0)
    this:ActorDestroy("Q7711004Trigger", 0)
    this:ActorDestroy("Q7711006Trigger", 0)
    this:ActorDestroy("Q7711008Trigger", 0)
    this:ActorDestroy("Q7711010Trigger", 0)
    this:ActorDestroy("Q7711012Trigger", 0)
    this:ActorDestroy("Q7711013Trigger", 0)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc22308.alias, 3)
    this:RecycleAllRes()
end

function Quest77110:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7711001Trigger", 77110)
    this:ActorDestroy("Q7711004Trigger", 0)
    this:ActorDestroy("Q7711006Trigger", 0)
    this:ActorDestroy("Q7711007Trigger", 77110)
    this:ActorDestroy("Q7711008Trigger", 0)
    this:ActorDestroy("Q7711010Trigger", 0)
    this:ActorDestroy("Q7711012Trigger", 0)
    this:ActorDestroy("Q7711012Trigger_1", 77110)
end

function Quest77110:ActorDestroy(arg1, arg2)
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

function Quest77110:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77110:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77110:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77110:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77110:OnSubStart7711001(arg1)
    print("OnSubStart7711001")
    actorMgr:CreateActorWithPos("Q7711001Trigger", "Actor/Gadget/Q7711001Trigger", 70900002, 0, points._Q7711001TriggerPoint_.pos, points._Q7711001TriggerPoint_.rot, true, false, 3, nil, 0, 77110)
    this:NpcCreateWithNpcTrigger(npcs.Npc22308.id, 0, 10, 7711001)
    this:CreateQuestNpc(arg1, npcs.Npc22565.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22517.id, 0, false, 0)
end

function Quest77110:OnSubFinish7711001(arg1)
    print("OnSubFinish7711001")
    this:NpcDestroyWithDither(3, npcs.Npc22308.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22517.alias, 3)
end

function Quest77110:OnSubStart7711012(arg1)
    print("OnSubStart7711012")
    actorMgr:CreateActorWithPos("Q7711012Trigger", "Actor/Gadget/Q7711012Trigger", 70900002, 0, points._Q7711012TriggerPoint_.pos, points._Q7711012TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7711012Trigger_1", "Actor/Gadget/Q7711012Trigger_1", 70900002, 0, points._Q7711012Trigger_1Point_.pos, points._Q7711012Trigger_1Point_.rot, true, false, 3, nil, 0, 77110)
end

function Quest77110:OnSubFinish7711012(arg1)
    print("OnSubFinish7711012")
end

function Quest77110:OnSubStart7711003(arg1)
    print("OnSubStart7711003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7711003, 0, 30, 0, npcs.Npc22308.id)
end

function Quest77110:OnSubFinish7711003(arg1)
    print("OnSubFinish7711003")
end

function Quest77110:OnSubStart7711004(arg1)
    print("OnSubStart7711004")
    actorMgr:CreateActorWithPos("Q7711004Trigger", "Actor/Gadget/Q7711004Trigger", 70900002, 0, points._Q7711004TriggerPoint_.pos, points._Q7711004TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77110:OnSubFinish7711004(arg1)
    print("OnSubFinish7711004")
end

function Quest77110:OnSubStart7711005(arg1)
    print("OnSubStart7711005")
end

function Quest77110:OnSubFinish7711005(arg1)
    print("OnSubFinish7711005")
end

function Quest77110:OnSubStart7711006(arg1)
    print("OnSubStart7711006")
    actorMgr:CreateActorWithPos("Q7711006Trigger", "Actor/Gadget/Q7711006Trigger", 70900002, 0, points._Q7711006TriggerPoint_.pos, points._Q7711006TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77110:OnSubFinish7711006(arg1)
    print("OnSubFinish7711006")
end

function Quest77110:OnSubStart7711015(arg1)
    print("OnSubStart7711015")
end

function Quest77110:OnSubFinish7711015(arg1)
    print("OnSubFinish7711015")
end

function Quest77110:OnSubStart7711016(arg1)
    print("OnSubStart7711016")
end

function Quest77110:OnSubFinish7711016(arg1)
    print("OnSubFinish7711016")
end

function Quest77110:OnSubStart7711007(arg1)
    print("OnSubStart7711007")
    actorMgr:CreateActorWithPos("Q7711007Trigger", "Actor/Gadget/Q7711007Trigger", 70900002, 0, points._Q7711007TriggerPoint_.pos, points._Q7711007TriggerPoint_.rot, true, false, 3, nil, 0, 77110)
end

function Quest77110:OnSubFinish7711007(arg1)
    print("OnSubFinish7711007")
end

function Quest77110:OnSubStart7711014(arg1)
    print("OnSubStart7711014")
end

function Quest77110:OnSubFinish7711014(arg1)
    print("OnSubFinish7711014")
end

function Quest77110:OnSubStart7711008(arg1)
    print("OnSubStart7711008")
    actorMgr:CreateActorWithPos("Q7711008Trigger", "Actor/Gadget/Q7711008Trigger", 70900002, 0, points._Q7711008TriggerPoint_.pos, points._Q7711008TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77110:OnSubFinish7711008(arg1)
    print("OnSubFinish7711008")
end

function Quest77110:OnSubStart7711009(arg1)
    print("OnSubStart7711009")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7711009, 0, 5, 0, npcs.Npc22308.id)
    this:DeployStoryByQuest(147711009)
end

function Quest77110:OnSubFinish7711009(arg1)
    print("OnSubFinish7711009")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22308.alias)
    this:CancelStoryByQuest(147711009)
end

function Quest77110:OnSubStart7711010(arg1)
    print("OnSubStart7711010")
    actorMgr:CreateActorWithPos("Q7711010Trigger", "Actor/Gadget/Q7711010Trigger", 70900002, 0, points._Q7711010TriggerPoint_.pos, points._Q7711010TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77110:OnSubFinish7711010(arg1)
    print("OnSubFinish7711010")
end

function Quest77110:OnSubStart7711011(arg1)
    print("OnSubStart7711011")
end

function Quest77110:OnSubFinish7711011(arg1)
    print("OnSubFinish7711011")
    this:SetNavigationByMainId(77102, true)
end

return Quest77110
