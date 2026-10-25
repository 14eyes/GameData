require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500303transmit = class("Q500303transmit", GadgetActorProxy)
Q500303transmit.defaultAlias = "Q500303transmit"
local Q5003ClientConfig = require("Quest/Client/Q5003ClientConfig")

local this
local subIDs = Q5003ClientConfig.SubIDs
local datas = Q5003ClientConfig.Datas
local npcs = Q5003ClientConfig.Npcs
local points = Q5003ClientConfig.Points

function Q500303transmit:OnPostDataPrepare()
    print("Q500303transmit - OnPostDataPrepare")
    this = self
end

function Q500303transmit:OnPostComponentPrepare()
    print("Q500303transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5003)
end

function Q500303transmit:TriggerIn()
    print("Q500303transmit - TriggerIn")
    actorMgr:GetActor("5003"):PlayerEnterDungeonWithData(1307, 1213, 500303, 0, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q500303transmit:PreTriggerIn()
    print("Q500303transmit - PreTriggerIn")
end

function Q500303transmit:LightUpTriggerIn()
    print("Q500303transmit - LightUpTriggerIn")
end

function Q500303transmit:TriggerOut()
    print("Q500303transmit - TriggerOut")
end

return Q500303transmit
