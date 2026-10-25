require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020001Trigger_nopaimon_down = class("Q4020001Trigger_nopaimon_down", GadgetActorProxy)
Q4020001Trigger_nopaimon_down.defaultAlias = "Q4020001Trigger_nopaimon_down"
local Q40200ClientConfig = require("Quest/Client/Q40200ClientConfig")

local this
local subIDs = Q40200ClientConfig.SubIDs
local datas = Q40200ClientConfig.Datas
local npcs = Q40200ClientConfig.Npcs
local points = Q40200ClientConfig.Points

function Q4020001Trigger_nopaimon_down:OnPostDataPrepare()
    print("Q4020001Trigger_nopaimon_down - OnPostDataPrepare")
    this = self
end

function Q4020001Trigger_nopaimon_down:OnPostComponentPrepare()
    print("Q4020001Trigger_nopaimon_down - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40200)
end

function Q4020001Trigger_nopaimon_down:TriggerIn()
    print("Q4020001Trigger_nopaimon_down - TriggerIn")
    actorMgr:GetActor("40200"):SetQuestVarByMainId(3, 1)
    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
end

function Q4020001Trigger_nopaimon_down:PreTriggerIn()
    print("Q4020001Trigger_nopaimon_down - PreTriggerIn")
end

function Q4020001Trigger_nopaimon_down:LightUpTriggerIn()
    print("Q4020001Trigger_nopaimon_down - LightUpTriggerIn")
end

function Q4020001Trigger_nopaimon_down:TriggerOut()
    print("Q4020001Trigger_nopaimon_down - TriggerOut")
end

return Q4020001Trigger_nopaimon_down
