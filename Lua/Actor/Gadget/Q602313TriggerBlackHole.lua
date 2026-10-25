require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602313TriggerBlackHole = class("Q602313TriggerBlackHole", GadgetActorProxy)
Q602313TriggerBlackHole.defaultAlias = "Q602313TriggerBlackHole"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602313TriggerBlackHole:OnPostDataPrepare()
    print("Q602313TriggerBlackHole - OnPostDataPrepare")
    this = self
end

function Q602313TriggerBlackHole:OnPostComponentPrepare()
    print("Q602313TriggerBlackHole - OnPostComponentPrepare")
    this:AddComponentTrigger(148, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602313TriggerBlackHole:TriggerIn()
    print("Q602313TriggerBlackHole - TriggerIn")
    actorMgr:GetActor("6023"):ShowMapEffect("DotoRegion", true)
    globalActor:ChangeDay24TimeClock(12, 0, 10, true)
end

function Q602313TriggerBlackHole:PreTriggerIn()
    print("Q602313TriggerBlackHole - PreTriggerIn")
end

function Q602313TriggerBlackHole:LightUpTriggerIn()
    print("Q602313TriggerBlackHole - LightUpTriggerIn")
end

function Q602313TriggerBlackHole:TriggerOut()
    print("Q602313TriggerBlackHole - TriggerOut")
    actorMgr:GetActor("6023"):ShowMapEffect("DotoRegion", false)
    globalActor:ChangeDay24TimeClock(19, 0, 10, true)
end

return Q602313TriggerBlackHole
