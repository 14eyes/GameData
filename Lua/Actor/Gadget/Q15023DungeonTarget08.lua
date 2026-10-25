require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q15023DungeonTarget08 = class("Q15023DungeonTarget08", GadgetActorProxy)
Q15023DungeonTarget08.defaultAlias = "Q15023DungeonTarget08"
local Q15023ClientConfig = require("Quest/Client/Q15023ClientConfig")

local this
local subIDs = Q15023ClientConfig.SubIDs
local npcs = Q15023ClientConfig.Npcs
local points = Q15023ClientConfig.Points

function Q15023DungeonTarget08:OnPostDataPrepare()
    print("Q15023DungeonTarget08 - OnPostDataPrepare")
    this = self
end

function Q15023DungeonTarget08:OnPostComponentPrepare()
    print("Q15023DungeonTarget08 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15023)
end

function Q15023DungeonTarget08:TriggerIn()
    print("Q15023DungeonTarget08 - TriggerIn")
    actorUtils.FinishQuestID(false, 1502324)
    this:DestroySelf()
end

function Q15023DungeonTarget08:PreTriggerIn()
    print("Q15023DungeonTarget08 - PreTriggerIn")
end

function Q15023DungeonTarget08:LightUpTriggerIn()
    print("Q15023DungeonTarget08 - LightUpTriggerIn")
end

function Q15023DungeonTarget08:TriggerOut()
    print("Q15023DungeonTarget08 - TriggerOut")
end

return Q15023DungeonTarget08
