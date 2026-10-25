require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3029TriggerFLEND01 = class("Q3029TriggerFLEND01", GadgetActorProxy)
Q3029TriggerFLEND01.defaultAlias = "Q3029TriggerFLEND01"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q3029TriggerFLEND01:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q3029TriggerFLEND01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(4, 10, 3, true, {x = 0.0, y = 0.0, z = 0.65}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q3029TriggerFLEND01:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302915)
    this:DestroySelf()
end

function Q3029TriggerFLEND01:PreTriggerIn()
    print("PreTriggerIn")
end

function Q3029TriggerFLEND01:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q3029TriggerFLEND01:TriggerOut()
    print("TriggerOut")
end

return Q3029TriggerFLEND01
