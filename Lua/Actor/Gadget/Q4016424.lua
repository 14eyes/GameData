require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016424 = class("Q4016424", GadgetActorProxy)
Q4016424.defaultAlias = "Q4016424"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016424:OnPostDataPrepare()
    print("Q4016424 - OnPostDataPrepare")
    this = self
end

function Q4016424:OnPostComponentPrepare()
    print("Q4016424 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016424:TriggerIn()
    print("Q4016424 - TriggerIn")
    actorUtils.FinishQuestID(false, 4016424)
    this:DestroySelf()
end

function Q4016424:PreTriggerIn()
    print("Q4016424 - PreTriggerIn")
end

function Q4016424:LightUpTriggerIn()
    print("Q4016424 - LightUpTriggerIn")
end

function Q4016424:TriggerOut()
    print("Q4016424 - TriggerOut")
end

return Q4016424
