require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413126TriggerFail = class("Q7413126TriggerFail", GadgetActorProxy)
Q7413126TriggerFail.defaultAlias = "Q7413126TriggerFail"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413126TriggerFail:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413126TriggerFail] OnPostDataPrepare")
    this = self
end

function Q7413126TriggerFail:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413126TriggerFail] OnPostComponentPrepare")
    this:AddComponentTrigger(101, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7413126TriggerFail:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413126TriggerFail] TriggerIn")
end

function Q7413126TriggerFail:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413126TriggerFail] PreTriggerIn")
end

function Q7413126TriggerFail:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413126TriggerFail] LightUpTriggerIn")
end

function Q7413126TriggerFail:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413126TriggerFail] TriggerOut")
    actorUtils.FinishQuestID(true, 7413126)
    this:DestroySelf()
end

return Q7413126TriggerFail
