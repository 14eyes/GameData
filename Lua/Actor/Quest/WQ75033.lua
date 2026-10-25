require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75033 = class("Quest75033", QuestActorProxy)
Quest75033.defaultAlias = "Quest75033"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75033:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7503301"] = self.OnSubStart7503301,
        ["7503308"] = self.OnSubStart7503308,
        ["7503307"] = self.OnSubStart7503307,
        ["7503302"] = self.OnSubStart7503302,
        ["7503305"] = self.OnSubStart7503305,
        ["7503306"] = self.OnSubStart7503306,
        ["7503303"] = self.OnSubStart7503303,
        ["7503304"] = self.OnSubStart7503304,
        ["7503309"] = self.OnSubStart7503309
    }
end

function Quest75033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7503301"] = self.OnSubFinish7503301,
        ["7503308"] = self.OnSubFinish7503308,
        ["7503307"] = self.OnSubFinish7503307,
        ["7503302"] = self.OnSubFinish7503302,
        ["7503305"] = self.OnSubFinish7503305,
        ["7503306"] = self.OnSubFinish7503306,
        ["7503303"] = self.OnSubFinish7503303,
        ["7503304"] = self.OnSubFinish7503304,
        ["7503309"] = self.OnSubFinish7503309
    }
end

function Quest75033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7503305"] = self.OnSubFailed7503305, ["7503303"] = self.OnSubFailed7503303}
end

function Quest75033:Start()
    print("Start")
end

function Quest75033:OnDestroy()
    print("OnDestroy")
end

function Quest75033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75033:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 7503302)
        actorUtils.FinishQuestID(false, 7503309)
    end
end

function Quest75033:OnSubStart7503301(arg1)
    print("OnSubStart7503301")
    this:CreateQuestNpc(arg1, npcs.Npc6136Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6137Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7503301Trigger", "Actor/Gadget/Q7503301Trigger", 70900002, 0, {x = -1434.906, y = 249.582, z = 9259.2}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75033:OnSubFinish7503301(arg1)
    print("OnSubFinish7503301")
end

function Quest75033:OnSubStart7503308(arg1)
    print("OnSubStart7503308")
end

function Quest75033:OnSubFinish7503308(arg1)
    print("OnSubFinish7503308")
end

function Quest75033:OnSubStart7503307(arg1)
    print("OnSubStart7503307")
end

function Quest75033:OnSubFinish7503307(arg1)
    print("OnSubFinish7503307")
end

function Quest75033:OnSubStart7503302(arg1)
    print("OnSubStart7503302")
    this:CreateQuestNpc(arg1, npcs.Npc6136Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6137Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6139Data.id, 0, false, 0)
end

function Quest75033:OnSubFinish7503302(arg1)
    print("OnSubFinish7503302")
    this:TransmitPlayerById(arg1, 3)
end

function Quest75033:OnSubStart7503305(arg1)
    print("OnSubStart7503305")
    this:CreateQuestNpc(arg1, npcs.Npc6136Data.id, 0, false, 0)
end

function Quest75033:OnSubFinish7503305(arg1)
    print("OnSubFinish7503305")
    this:TransmitPlayerById(arg1, 2, nil, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:RequestInteraction(npcs.Npc6136Data.alias, "", true)
        end)
    end)
end

function Quest75033:OnSubFailed7503305(arg1)
    print("OnSubFailed7503305")
    this:TransmitPlayerById(arg1, 5, nil, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:RequestInteraction("6136", "", true)
        end)
    end)
end

function Quest75033:OnSubStart7503306(arg1)
    print("OnSubStart7503306")
    this:CreateQuestNpc(arg1, npcs.Npc6136Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6137Data.id, 0, false, 0)
end

function Quest75033:OnSubFinish7503306(arg1)
    print("OnSubFinish7503306")
end

function Quest75033:OnSubStart7503303(arg1)
    print("OnSubStart7503303")
    this:CreateQuestNpc(arg1, npcs.Npc6136Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6137Data.id, 0, false, 0)
end

function Quest75033:OnSubFinish7503303(arg1)
    print("OnSubFinish7503303")
    this:TransmitPlayerById(arg1, 1, nil, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:RequestInteraction(npcs.Npc6136Data.alias, "", true)
        end)
    end)
end

function Quest75033:OnSubFailed7503303(arg1)
    print("OnSubFailed7503303")
    this:TransmitPlayerById(arg1, 1, nil, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:RequestInteraction(npcs.Npc6136Data.alias, "", true)
        end)
    end)
end

function Quest75033:OnSubStart7503304(arg1)
    print("OnSubStart7503304")
    this:CreateQuestNpc(arg1, npcs.Npc6136Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6137Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6139Data.id, 0, false, 0)
end

function Quest75033:OnSubFinish7503304(arg1)
    print("OnSubFinish7503304")
end

function Quest75033:OnSubStart7503309(arg1)
    print("OnSubStart7503309")
    this:CreateQuestNpc(arg1, npcs.Npc6136Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6137Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6139Data.id, 0, false, 0)
end

function Quest75033:OnSubFinish7503309(arg1)
    print("OnSubFinish7503309")
    this:TransmitPlayerById(arg1, 4)
end

return Quest75033
