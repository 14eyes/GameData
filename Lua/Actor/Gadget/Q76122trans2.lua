require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76122trans2 = class("Q76122trans2", GadgetActorProxy)
Q76122trans2.defaultAlias = "Q76122trans2"
local Q76122ClientConfig = require("Quest/Client/Q76122ClientConfig")

local this
local subIDs = Q76122ClientConfig.SubIDs
local datas = Q76122ClientConfig.Datas
local npcs = Q76122ClientConfig.Npcs
local points = Q76122ClientConfig.Points

function Q76122trans2:OnPostDataPrepare()
    print("Q76122trans2 - OnPostDataPrepare")
    this = self
end

function Q76122trans2:OnPostComponentPrepare()
    print("Q76122trans2 - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76122)
end

function Q76122trans2:TriggerIn()
    print("Q76122trans2 - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("76122"):TransmitPlayerByQuestId(7612206, 3, nil, nil, nil)
end

function Q76122trans2:PreTriggerIn()
    print("Q76122trans2 - PreTriggerIn")
end

function Q76122trans2:LightUpTriggerIn()
    print("Q76122trans2 - LightUpTriggerIn")
end

function Q76122trans2:TriggerOut()
    print("Q76122trans2 - TriggerOut")
end

return Q76122trans2
