require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110035TalkTrigger = class("Q7110035TalkTrigger", GadgetActorProxy)
Q7110035TalkTrigger.defaultAlias = "Q7110035TalkTrigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Quest71100.CreateQuestNpcBesidePlayer(arg1, arg2, arg3, arg4)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg4
    avatarPos.z = avatarPos.z + v * arg4
    actorMgr:GetActor("71100"):CreateQuestNpcByIdWithPos(arg2, arg3, 0, avatarPos, avatarForward)
end

function Q7110035TalkTrigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110035TalkTrigger] OnPostDataPrepare")
    this = self
end

function Q7110035TalkTrigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110035TalkTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110035TalkTrigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110035TalkTrigger] TriggerIn")
    local actor = actorMgr:GetActor("71100")
    this:CreateQuestNpcBesidePlayer(7110035, npcs.PaimonData.id, 0.5)
    actor:RequestInteraction(npcs.PaimonData.alias, "", true)
    this:DestroySelf()
end

function Q7110035TalkTrigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110035TalkTrigger] PreTriggerIn")
end

function Q7110035TalkTrigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110035TalkTrigger] LightUpTriggerIn")
end

function Q7110035TalkTrigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110035TalkTrigger] TriggerOut")
end

return Q7110035TalkTrigger
