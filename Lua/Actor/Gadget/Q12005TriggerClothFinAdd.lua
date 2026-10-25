require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12005TriggerClothFinAdd = class("Q12005TriggerClothFinAdd", GadgetActorProxy)
Q12005TriggerClothFinAdd.defaultAlias = "Q12005TriggerClothFinAdd"
local Q12005ClientConfig = require("Quest/Client/Q12005ClientConfig")

local mainID = Q12005ClientConfig.MainID
local actorAlias = Q12005ClientConfig.ActorAlias
local subIDs = Q12005ClientConfig.SubIDs
local npcs = Q12005ClientConfig.Npcs
local datas = Q12005ClientConfig.Datas

function Q12005TriggerClothFinAdd:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12005TriggerClothFinAdd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12005TriggerClothFinAdd:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc3006Data.alias)
    self:DestroySelf()
end

function Q12005TriggerClothFinAdd:TriggerOut()
    print("TriggerOut")
end

return Q12005TriggerClothFinAdd
