require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422802_PreTalkTrigger = class("Q7422802_PreTalkTrigger", GadgetActorProxy)
Q7422802_PreTalkTrigger.defaultAlias = "Q7422802_PreTalkTrigger"
local Q74228ClientConfig = require("Quest/Client/Q74228ClientConfig")

local this
local subIDs = Q74228ClientConfig.SubIDs
local datas = Q74228ClientConfig.Datas
local npcs = Q74228ClientConfig.Npcs
local points = Q74228ClientConfig.Points

function Q7422802_PreTalkTrigger:OnPostDataPrepare()
    print("Q7422802_PreTalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7422802_PreTalkTrigger:OnPostComponentPrepare()
    print("Q7422802_PreTalkTrigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(13, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74228)
end

function Q7422802_PreTalkTrigger:TriggerIn()
    print("Q7422802_PreTalkTrigger - TriggerIn")
    actorMgr:GetActor("74228"):CreateNoBlackTalkTriggerWithNpc("Q7422802TalkTrigger", 7422802, 1, npcs.Npc16473.id, 0, 18, 7422801, datas.NoBlackData_7422802)
    this:DestroySelf()
end

function Q7422802_PreTalkTrigger:PreTriggerIn()
    print("Q7422802_PreTalkTrigger - PreTriggerIn")
end

function Q7422802_PreTalkTrigger:LightUpTriggerIn()
    print("Q7422802_PreTalkTrigger - LightUpTriggerIn")
end

function Q7422802_PreTalkTrigger:TriggerOut()
    print("Q7422802_PreTalkTrigger - TriggerOut")
end

return Q7422802_PreTalkTrigger
