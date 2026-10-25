require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020001Trigger_nopaimon_up = class("Q4020001Trigger_nopaimon_up", GadgetActorProxy)
Q4020001Trigger_nopaimon_up.defaultAlias = "Q4020001Trigger_nopaimon_up"
local Q40200ClientConfig = require("Quest/Client/Q40200ClientConfig")

local this
local subIDs = Q40200ClientConfig.SubIDs
local datas = Q40200ClientConfig.Datas
local npcs = Q40200ClientConfig.Npcs
local points = Q40200ClientConfig.Points

function Q4020001Trigger_nopaimon_up:OnPostDataPrepare()
    print("Q4020001Trigger_nopaimon_up - OnPostDataPrepare")
    this = self
end

function Q4020001Trigger_nopaimon_up:OnPostComponentPrepare()
    print("Q4020001Trigger_nopaimon_up - OnPostComponentPrepare")
    this:AddComponentTrigger(170, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40200)
end

function Q4020001Trigger_nopaimon_up:TriggerIn()
    print("Q4020001Trigger_nopaimon_up - TriggerIn")
    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
end

function Q4020001Trigger_nopaimon_up:PreTriggerIn()
    print("Q4020001Trigger_nopaimon_up - PreTriggerIn")
end

function Q4020001Trigger_nopaimon_up:LightUpTriggerIn()
    print("Q4020001Trigger_nopaimon_up - LightUpTriggerIn")
end

function Q4020001Trigger_nopaimon_up:TriggerOut()
    print("Q4020001Trigger_nopaimon_up - TriggerOut")
end

return Q4020001Trigger_nopaimon_up
