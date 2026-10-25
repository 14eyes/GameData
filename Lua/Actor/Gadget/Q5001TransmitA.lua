require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5001TransmitA = class("Q5001TransmitA", GadgetActorProxy)
Q5001TransmitA.defaultAlias = "Q5001TransmitA"
local Q5001ClientConfig = require("Quest/Client/Q5001ClientConfig")

local this
local subIDs = Q5001ClientConfig.SubIDs
local datas = Q5001ClientConfig.Datas
local npcs = Q5001ClientConfig.Npcs
local points = Q5001ClientConfig.Points

function Q5001TransmitA:OnPostDataPrepare()
    print("Q5001TransmitA - OnPostDataPrepare")
    this = self
end

function Q5001TransmitA:OnPostComponentPrepare()
    print("Q5001TransmitA - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5001)
end

function Q5001TransmitA:TriggerIn()
    print("Q5001TransmitA - TriggerIn")
    actorMgr:GetActor("5001"):PlayerEnterDungeonWithData(1307, 1213, 500120, 0, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q5001TransmitA:PreTriggerIn()
    print("Q5001TransmitA - PreTriggerIn")
end

function Q5001TransmitA:LightUpTriggerIn()
    print("Q5001TransmitA - LightUpTriggerIn")
end

function Q5001TransmitA:TriggerOut()
    print("Q5001TransmitA - TriggerOut")
end

return Q5001TransmitA
