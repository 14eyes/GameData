require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328702Trigger = class("Q7328702Trigger", GadgetActorProxy)
Q7328702Trigger.defaultAlias = "Q7328702Trigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCommonPolygonTrigger(1, "Inazuma_Tanit_01", 1, false, self.TriggerIn, self.TriggerOut)
end

function Q7328702Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328702)
    this:DestroySelf()
end

function Q7328702Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328702Trigger
