require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303525_TriggerIn = class("Q303525_TriggerIn", GadgetActorProxy)
Q303525_TriggerIn.defaultAlias = "Q303525_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303525_TriggerIn:OnPostDataPrepare()
    print("Q303525_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303525_TriggerIn:OnPostComponentPrepare()
    print("Q303525_TriggerIn - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 60, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303525_TriggerIn:TriggerIn()
    print("Q303525_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):RequestInteraction(npcs.Npc16565.alias, "", true)
    this:DestroySelf()
end

function Q303525_TriggerIn:PreTriggerIn()
    print("Q303525_TriggerIn - PreTriggerIn")
end

function Q303525_TriggerIn:LightUpTriggerIn()
    print("Q303525_TriggerIn - LightUpTriggerIn")
end

function Q303525_TriggerIn:TriggerOut()
    print("Q303525_TriggerIn - TriggerOut")
end

return Q303525_TriggerIn
