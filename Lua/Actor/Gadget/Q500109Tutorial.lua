require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500109Tutorial = class("Q500109Tutorial", GadgetActorProxy)
Q500109Tutorial.defaultAlias = "Q500109Tutorial"
local Q5001ClientConfig = require("Quest/Client/Q5001ClientConfig")

local this
local subIDs = Q5001ClientConfig.SubIDs
local datas = Q5001ClientConfig.Datas
local npcs = Q5001ClientConfig.Npcs
local points = Q5001ClientConfig.Points

function Q500109Tutorial:OnPostDataPrepare()
    print("Q500109Tutorial - OnPostDataPrepare")
    this = self
end

function Q500109Tutorial:OnPostComponentPrepare()
    print("Q500109Tutorial - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5001)
end

function Q500109Tutorial:TriggerIn()
    print("Q500109Tutorial - TriggerIn")
    actorMgr:GetActor("5001"):ShowTutorialDialog(1907, function(arg1)
        this:DestroySelf()
    end)
end

function Q500109Tutorial:PreTriggerIn()
    print("Q500109Tutorial - PreTriggerIn")
end

function Q500109Tutorial:LightUpTriggerIn()
    print("Q500109Tutorial - LightUpTriggerIn")
end

function Q500109Tutorial:TriggerOut()
    print("Q500109Tutorial - TriggerOut")
end

return Q500109Tutorial
