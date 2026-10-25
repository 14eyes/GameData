require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3029TriggerFLEND02 = class("Q3029TriggerFLEND02", GadgetActorProxy)
Q3029TriggerFLEND02.defaultAlias = "Q3029TriggerFLEND02"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q3029TriggerFLEND02:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q3029TriggerFLEND02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(3.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q3029TriggerFLEND02:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302908)
    this:DestroySelf()
end

function Q3029TriggerFLEND02:PreTriggerIn()
    print("PreTriggerIn")
end

function Q3029TriggerFLEND02:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q3029TriggerFLEND02:TriggerOut()
    print("TriggerOut")
end

return Q3029TriggerFLEND02
