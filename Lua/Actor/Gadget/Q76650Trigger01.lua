require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76650Trigger01 = class("Q76650Trigger01", GadgetActorProxy)
Q76650Trigger01.defaultAlias = "Q76650Trigger01"
local Q76650ClientConfig = require("Quest/Client/Q76650ClientConfig")

local this
local subIDs = Q76650ClientConfig.SubIDs
local datas = Q76650ClientConfig.Datas
local npcs = Q76650ClientConfig.Npcs
local points = Q76650ClientConfig.Points

function Q76650Trigger01:OnPostDataPrepare()
    print("Q76650Trigger01 - OnPostDataPrepare")
    this = self
end

function Q76650Trigger01:OnPostComponentPrepare()
    print("Q76650Trigger01 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76650)
end

function Q76650Trigger01:TriggerIn()
    print("Q76650Trigger01 - TriggerIn")
    actorUtils.FinishQuestID(false, 7665006)
    this:DestroySelf()
end

function Q76650Trigger01:PreTriggerIn()
    print("Q76650Trigger01 - PreTriggerIn")
end

function Q76650Trigger01:LightUpTriggerIn()
    print("Q76650Trigger01 - LightUpTriggerIn")
end

function Q76650Trigger01:TriggerOut()
    print("Q76650Trigger01 - TriggerOut")
end

return Q76650Trigger01
