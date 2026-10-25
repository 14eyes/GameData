require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40171Trigger7 = class("Q40171Trigger7", GadgetActorProxy)
Q40171Trigger7.defaultAlias = "Q40171Trigger7"
local Q40171ClientConfig = require("Quest/Client/Q40171ClientConfig")

local this
local subIDs = Q40171ClientConfig.SubIDs
local datas = Q40171ClientConfig.Datas
local npcs = Q40171ClientConfig.Npcs
local points = Q40171ClientConfig.Points

function Q40171Trigger7:OnPostDataPrepare()
    print("Q40171Trigger7 - OnPostDataPrepare")
    this = self
end

function Q40171Trigger7:OnPostComponentPrepare()
    print("Q40171Trigger7 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40171)
end

function Q40171Trigger7:TriggerIn()
    print("Q40171Trigger7 - TriggerIn")
    actorUtils.FinishQuestID(false, 4017108)
    this:DestroySelf()
end

function Q40171Trigger7:PreTriggerIn()
    print("Q40171Trigger7 - PreTriggerIn")
end

function Q40171Trigger7:LightUpTriggerIn()
    print("Q40171Trigger7 - LightUpTriggerIn")
end

function Q40171Trigger7:TriggerOut()
    print("Q40171Trigger7 - TriggerOut")
end

return Q40171Trigger7
