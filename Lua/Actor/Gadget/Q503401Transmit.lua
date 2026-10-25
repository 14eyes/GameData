require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q503401Transmit = class("Q503401Transmit", GadgetActorProxy)
Q503401Transmit.defaultAlias = "Q503401Transmit"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q503401Transmit:OnPostDataPrepare()
    print("Q503401Transmit - OnPostDataPrepare")
    this = self
end

function Q503401Transmit:OnPostComponentPrepare()
    print("Q503401Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q503401Transmit:TriggerIn()
    print("Q503401Transmit - TriggerIn")
    actorMgr:GetActor("5034"):PlayerEnterDungeonWithData(1436, 1230, 503402, 0, datas.PlayerEnterDungeonData_NoQuestConfig, nil, nil)
    this:DestroySelf()
end

function Q503401Transmit:PreTriggerIn()
    print("Q503401Transmit - PreTriggerIn")
end

function Q503401Transmit:LightUpTriggerIn()
    print("Q503401Transmit - LightUpTriggerIn")
end

function Q503401Transmit:TriggerOut()
    print("Q503401Transmit - TriggerOut")
end

return Q503401Transmit
