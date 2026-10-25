require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76028 = class("Quest76028", QuestActorProxy)
Quest76028.defaultAlias = "Quest76028"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76028:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7602804"] = self.OnSubStart7602804,
        ["7602805"] = self.OnSubStart7602805,
        ["7602806"] = self.OnSubStart7602806,
        ["7602807"] = self.OnSubStart7602807,
        ["7602801"] = self.OnSubStart7602801,
        ["7602802"] = self.OnSubStart7602802,
        ["7602803"] = self.OnSubStart7602803
    }
end

function Quest76028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7602804"] = self.OnSubFinish7602804,
        ["7602805"] = self.OnSubFinish7602805,
        ["7602806"] = self.OnSubFinish7602806,
        ["7602807"] = self.OnSubFinish7602807,
        ["7602801"] = self.OnSubFinish7602801,
        ["7602802"] = self.OnSubFinish7602802,
        ["7602803"] = self.OnSubFinish7602803
    }
end

function Quest76028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7602802"] = self.OnSubFailed7602802}
end

function Quest76028:Start()
    print("Start")
end

function Quest76028:OnDestroy()
    print("OnDestroy")
end

function Quest76028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76028:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7602807Trigger")
    this:ActorDestroy("Q7602802Trigger")
end

function Quest76028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76028:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76028:OnSubStart7602804(arg1)
    print("OnSubStart7602804")
end

function Quest76028:OnSubFinish7602804(arg1)
    print("OnSubFinish7602804")
end

function Quest76028:OnSubStart7602805(arg1)
    print("OnSubStart7602805")
end

function Quest76028:OnSubFinish7602805(arg1)
    print("OnSubFinish7602805")
end

function Quest76028:OnSubStart7602806(arg1)
    print("OnSubStart7602806")
end

function Quest76028:OnSubFinish7602806(arg1)
    print("OnSubFinish7602806")
end

function Quest76028:OnSubStart7602807(arg1)
    print("OnSubStart7602807")
    actorMgr:CreateActorWithPos("Q7602807Trigger", "Actor/Gadget/Q7602807Trigger", 70900002, 0, points._Q7602807TriggerPoint_.pos, points._Q7602807TriggerPoint_.rot, true, false, 3)
end

function Quest76028:OnSubFinish7602807(arg1)
    print("OnSubFinish7602807")
end

function Quest76028:OnSubStart7602801(arg1)
    print("OnSubStart7602801")
    this:PlayCutsceneIndex(7602801, function(arg1)
        actorUtils.FinishQuestID(false, 7602801)
    end, nil, nil, false)
end

function Quest76028:OnSubFinish7602801(arg1)
    print("OnSubFinish7602801")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_blackhole, nil, nil, nil)
end

function Quest76028:OnSubStart7602802(arg1)
    print("OnSubStart7602802")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiShadow")
    actorMgr:CreateActorWithPos("Q7602802Trigger", "Actor/Gadget/Q7602802Trigger", 70900002, 0, points._Q7602802TriggerPoint_.pos, points._Q7602802TriggerPoint_.rot, true, false, 3)
end

function Quest76028:OnSubFinish7602802(arg1)
    print("OnSubFinish7602802")
    this:ShowBlackScreenWithDialogText(0, 5, 0, nil, nil, nil, 0, false, true)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_blackholeout, nil, nil, nil)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiShadow")
end

function Quest76028:OnSubFailed7602802(arg1)
    print("OnSubFailed7602802")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiShadow")
end

function Quest76028:OnSubStart7602803(arg1)
    print("OnSubStart7602803")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiShadow")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602803, 0, 20, 1, npcs.Paimon.id)
end

function Quest76028:OnSubFinish7602803(arg1)
    print("OnSubFinish7602803")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

return Quest76028
