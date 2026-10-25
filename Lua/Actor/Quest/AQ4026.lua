require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4026 = class("Quest4026", QuestActorProxy)
Quest4026.defaultAlias = "Quest4026"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4026:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["402601"] = self.OnSubStart402601,
        ["402602"] = self.OnSubStart402602,
        ["402603"] = self.OnSubStart402603,
        ["402604"] = self.OnSubStart402604
    }
end

function Quest4026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["402601"] = self.OnSubFinish402601,
        ["402602"] = self.OnSubFinish402602,
        ["402603"] = self.OnSubFinish402603,
        ["402604"] = self.OnSubFinish402604
    }
end

function Quest4026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4026:Start()
    print("Start")
end

function Quest4026:OnDestroy()
    print("OnDestroy")
end

function Quest4026:OnMainFinished(arg1)
    print("OnMainFinished")
    this:ActorDestroy(datas.Q402601_TriggerIn.alias)
    this:ActorDestroy(datas.Q402603_TriggerIn.alias)
    this:ActorDestroy(datas.Q402603_TriggerIn_chuansong.alias)
end

function Quest4026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4026:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4026:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    this:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest4026:OnSubStart402601(arg1)
    print("OnSubStart402601")
    actorMgr:CreateActorWithPos("Q402601_TriggerIn", "Actor/Gadget/Q402601_TriggerIn", 70900002, 0, {x = 4477.216, y = 89.865, z = 4698.623}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest4026:OnSubFinish402601(arg1)
    print("OnSubFinish402601")
    this:ActorDestroy(datas.Q402601_TriggerIn.alias)
end

function Quest4026:OnSubStart402602(arg1)
    print("OnSubStart402602")
    this:CreateQuestNpcFaceToPlayer(402602, 13626, 5)
    this:RequestInteraction(npcs.Npc13626Data.alias)
end

function Quest4026:OnSubFinish402602(arg1)
    print("OnSubFinish402602")
    this:SafeDestroyQuestNpc(npcs.Npc13626Data.alias, 3)
end

function Quest4026:OnSubStart402603(arg1)
    print("OnSubStart402603")
    actorMgr:CreateActorWithPos("Q402603_TriggerIn", "Actor/Gadget/Q402603_TriggerIn", 70900002, 0, points.TPos_Q402603_TriggerIn.pos, points.TPos_Q402603_TriggerIn.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q402603_TriggerIn_chuansong", "Actor/Gadget/Q402603_TriggerIn_chuansong", 70900002, 0, {x = 4477.216, y = 89.865, z = 4698.623}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest4026:OnSubFinish402603(arg1)
    print("OnSubFinish402603")
    this:ActorDestroy(datas.Q402603_TriggerIn.alias)
    this:ActorDestroy(datas.Q402603_TriggerIn_chuansong.alias)
end

function Quest4026:OnSubStart402604(arg1)
    print("OnSubStart402604")
    actorUtils.FinishQuestID(false, 402604)
end

function Quest4026:OnSubFinish402604(arg1)
    print("OnSubFinish402604")
end

return Quest4026
