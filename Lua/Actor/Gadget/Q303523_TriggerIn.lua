require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303523_TriggerIn = class("Q303523_TriggerIn", GadgetActorProxy)
Q303523_TriggerIn.defaultAlias = "Q303523_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303523_TriggerIn:OnPostDataPrepare()
    print("Q303523_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303523_TriggerIn:OnPostComponentPrepare()
    print("Q303523_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303523_TriggerIn:TriggerIn()
    print("Q303523_TriggerIn - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {303523})
    this:DestroySelf()
end

function Q303523_TriggerIn:PreTriggerIn()
    print("Q303523_TriggerIn - PreTriggerIn")
end

function Q303523_TriggerIn:LightUpTriggerIn()
    print("Q303523_TriggerIn - LightUpTriggerIn")
end

function Q303523_TriggerIn:TriggerOut()
    print("Q303523_TriggerIn - TriggerOut")
end

return Q303523_TriggerIn
