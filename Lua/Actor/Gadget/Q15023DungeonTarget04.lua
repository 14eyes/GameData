require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q15023DungeonTarget04 = class("Q15023DungeonTarget04", GadgetActorProxy)
Q15023DungeonTarget04.defaultAlias = "Q15023DungeonTarget04"
local Q15023ClientConfig = require("Quest/Client/Q15023ClientConfig")

local this
local subIDs = Q15023ClientConfig.SubIDs
local npcs = Q15023ClientConfig.Npcs
local points = Q15023ClientConfig.Points

function Q15023DungeonTarget04:OnPostDataPrepare()
    print("Q15023DungeonTarget04 - OnPostDataPrepare")
    this = self
end

function Q15023DungeonTarget04:OnPostComponentPrepare()
    print("Q15023DungeonTarget04 - OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15023)
end

function Q15023DungeonTarget04:TriggerIn()
    print("Q15023DungeonTarget04 - TriggerIn")
    actorUtils.FinishQuestID(false, 1502320)
    this:DestroySelf()
end

function Q15023DungeonTarget04:PreTriggerIn()
    print("Q15023DungeonTarget04 - PreTriggerIn")
end

function Q15023DungeonTarget04:LightUpTriggerIn()
    print("Q15023DungeonTarget04 - LightUpTriggerIn")
end

function Q15023DungeonTarget04:TriggerOut()
    print("Q15023DungeonTarget04 - TriggerOut")
end

return Q15023DungeonTarget04
