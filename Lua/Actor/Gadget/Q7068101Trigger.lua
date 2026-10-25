require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7068101Trigger = class("Q7068101Trigger", GadgetActorProxy)
Q7068101Trigger.defaultAlias = "Q7068101Trigger"
local Q70681ClientConfig = require("Quest/Client/Q70681ClientConfig")

local this
local subIDs = Q70681ClientConfig.SubIDs
local datas = Q70681ClientConfig.Datas
local npcs = Q70681ClientConfig.Npcs
local points = Q70681ClientConfig.Points

function Q7068101Trigger:OnPostDataPrepare()
    print("Q7068101Trigger - OnPostDataPrepare")
    this = self
end

function Q7068101Trigger:OnPostComponentPrepare()
    print("Q7068101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70681)
end

function Q7068101Trigger:TriggerIn()
    print("Q7068101Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7068101)
    this:DestroySelf()
end

function Q7068101Trigger:PreTriggerIn()
    print("Q7068101Trigger - PreTriggerIn")
end

function Q7068101Trigger:LightUpTriggerIn()
    print("Q7068101Trigger - LightUpTriggerIn")
end

function Q7068101Trigger:TriggerOut()
    print("Q7068101Trigger - TriggerOut")
end

return Q7068101Trigger
