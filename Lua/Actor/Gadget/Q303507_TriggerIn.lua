require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303507_TriggerIn = class("Q303507_TriggerIn", GadgetActorProxy)
Q303507_TriggerIn.defaultAlias = "Q303507_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303507_TriggerIn:OnPostDataPrepare()
    print("Q303507_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303507_TriggerIn:OnPostComponentPrepare()
    print("Q303507_TriggerIn - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(35, 25, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303507_TriggerIn:TriggerIn()
    print("Q303507_TriggerIn - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {303507})
    this:DestroySelf()
end

function Q303507_TriggerIn:PreTriggerIn()
    print("Q303507_TriggerIn - PreTriggerIn")
end

function Q303507_TriggerIn:LightUpTriggerIn()
    print("Q303507_TriggerIn - LightUpTriggerIn")
end

function Q303507_TriggerIn:TriggerOut()
    print("Q303507_TriggerIn - TriggerOut")
end

return Q303507_TriggerIn
