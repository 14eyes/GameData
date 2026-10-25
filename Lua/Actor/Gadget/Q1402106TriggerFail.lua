require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402106TriggerFail = class("Q1402106TriggerFail", GadgetActorProxy)
Q1402106TriggerFail.defaultAlias = "Q1402106TriggerFail"
local Q14021ClientConfig = require("Quest/Client/Q14021ClientConfig")

local this
local subIDs = Q14021ClientConfig.SubIDs
local npcs = Q14021ClientConfig.Npcs
local points = Q14021ClientConfig.Points
local datas = Q14021ClientConfig.Datas

function Q1402106TriggerFail:OnPostDataPrepare()
    print("[MainId: 14021][Trigger: Q1402106TriggerFail] OnPostDataPrepare")
    this = self
end

function Q1402106TriggerFail:OnPostComponentPrepare()
    print("[MainId: 14021][Trigger: Q1402106TriggerFail] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(37.70498, 86.17735, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1402106TriggerFail:TriggerIn()
    print("[MainId: 14021][Trigger: Q1402106TriggerFail] TriggerIn")
end

function Q1402106TriggerFail:PreTriggerIn()
    print("[MainId: 14021][Trigger: Q1402106TriggerFail] PreTriggerIn")
end

function Q1402106TriggerFail:LightUpTriggerIn()
    print("[MainId: 14021][Trigger: Q1402106TriggerFail] LightUpTriggerIn")
end

function Q1402106TriggerFail:TriggerOut()
    print("[MainId: 14021][Trigger: Q1402106TriggerFail] TriggerOut")
    actorUtils.FinishQuestID(true, 1402106)
    this:DestroySelf()
end

return Q1402106TriggerFail
