require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020106Trigger_escape = class("Q4020106Trigger_escape", GadgetActorProxy)
Q4020106Trigger_escape.defaultAlias = "Q4020106Trigger_escape"
local Q40201ClientConfig = require("Quest/Client/Q40201ClientConfig")

local this
local subIDs = Q40201ClientConfig.SubIDs
local datas = Q40201ClientConfig.Datas
local npcs = Q40201ClientConfig.Npcs
local points = Q40201ClientConfig.Points

function Q4020106Trigger_escape:OnPostDataPrepare()
    print("Q4020106Trigger_escape - OnPostDataPrepare")
    this = self
end

function Q4020106Trigger_escape:OnPostComponentPrepare()
    print("Q4020106Trigger_escape - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(9.6, 7.7, 2.116211, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40201)
end

function Q4020106Trigger_escape:TriggerIn()
    print("Q4020106Trigger_escape - TriggerIn")
    actorMgr:GetActor("40201"):RequestInteraction(npcs.Npc1048.alias, "", true)
end

function Q4020106Trigger_escape:PreTriggerIn()
    print("Q4020106Trigger_escape - PreTriggerIn")
end

function Q4020106Trigger_escape:LightUpTriggerIn()
    print("Q4020106Trigger_escape - LightUpTriggerIn")
end

function Q4020106Trigger_escape:TriggerOut()
    print("Q4020106Trigger_escape - TriggerOut")
end

return Q4020106Trigger_escape
