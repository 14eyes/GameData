require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613201Trigger = class("Q7613201Trigger", GadgetActorProxy)
Q7613201Trigger.defaultAlias = "Q7613201Trigger"
local Q76132ClientConfig = require("Quest/Client/Q76132ClientConfig")

local this
local subIDs = Q76132ClientConfig.SubIDs
local datas = Q76132ClientConfig.Datas
local npcs = Q76132ClientConfig.Npcs
local points = Q76132ClientConfig.Points

function Q7613201Trigger:OnPostDataPrepare()
    print("Q7613201Trigger - OnPostDataPrepare")
    this = self
end

function Q7613201Trigger:OnPostComponentPrepare()
    print("Q7613201Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(55, 500, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76132)
end

function Q7613201Trigger:TriggerIn()
    print("Q7613201Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7613201)
    this:DestroySelf()
end

function Q7613201Trigger:PreTriggerIn()
    print("Q7613201Trigger - PreTriggerIn")
end

function Q7613201Trigger:LightUpTriggerIn()
    print("Q7613201Trigger - LightUpTriggerIn")
end

function Q7613201Trigger:TriggerOut()
    print("Q7613201Trigger - TriggerOut")
end

return Q7613201Trigger
