require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41422 = class("Quest41422", QuestActorProxy)
Quest41422.defaultAlias = "Quest41422"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41422:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41422:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4142205"] = self.OnSubStart4142205,
        ["4142201"] = self.OnSubStart4142201,
        ["4142202"] = self.OnSubStart4142202,
        ["4142203"] = self.OnSubStart4142203,
        ["4142204"] = self.OnSubStart4142204,
        ["4142206"] = self.OnSubStart4142206
    }
end

function Quest41422:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4142205"] = self.OnSubFinish4142205,
        ["4142201"] = self.OnSubFinish4142201,
        ["4142202"] = self.OnSubFinish4142202,
        ["4142203"] = self.OnSubFinish4142203,
        ["4142204"] = self.OnSubFinish4142204,
        ["4142206"] = self.OnSubFinish4142206
    }
end

function Quest41422:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4142205"] = self.OnSubFailed4142205,
        ["4142201"] = self.OnSubFailed4142201,
        ["4142202"] = self.OnSubFailed4142202,
        ["4142203"] = self.OnSubFailed4142203,
        ["4142204"] = self.OnSubFailed4142204,
        ["4142206"] = self.OnSubFailed4142206
    }
end

function Quest41422:Start()
    print("Start")
end

function Quest41422:OnDestroy()
    print("OnDestroy")
end

function Quest41422:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41422:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest41422:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest41422:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Destroy2222222222222222")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
    elseif arg1 == 4142201 then
        print("4142201")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
        self:SpawnGadgetById(4142201, 70710311)
    elseif arg1 == 4142202 then
        print("4142202")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
        self:SpawnGadgetById(4142202, 70710311, 1)
    elseif arg1 == 4142204 then
        print("4142204")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
        self:SpawnGadgetById(4142204, 70710311, 1)
    end
end

function Quest41422:ClearData()
    print("ClearData")
    self:NotifyTo(npcs.Npc1650Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1529Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc10367Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc165001Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152901Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710311Data.alias)
    actorMgr:DestroyEntityActor(datas.Q41422Trigger_.alias, 3, false)
end

function Quest41422:OnSubStart4142205(arg1)
    print("OnSubStart4142205")
end

function Quest41422:OnSubFinish4142205(arg1)
    print("OnSubFinish4142205")
end

function Quest41422:OnSubFailed4142205(arg1)
    print("OnSubFailed4142205")
end

function Quest41422:OnSubStart4142201(arg1)
    print("OnSubStart4142201")
    self:CreateQuestNpc(arg1, npcs.Npc10367Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q41422Trigger_.alias, datas.Q41422Trigger_.script, datas.Q41422Trigger_.id, 0, datas.Q41422Trigger_.point.pos, datas.Q41422Trigger_.point.rot, true, false, 3)
end

function Quest41422:OnSubFinish4142201(arg1)
    print("OnSubFinish4142201")
    self:SafeDestroyQuestNpc(npcs.Npc10367Data.alias, 3)
end

function Quest41422:OnSubFailed4142201(arg1)
    print("OnSubFailed4142201")
end

function Quest41422:OnSubStart4142202(arg1)
    print("OnSubStart4142202")
    self:CreateQuestNpc(arg1, npcs.Npc165001Data.id, 1)
    self:NotifyTo(npcs.Npc1650Data.alias, 1, true)
end

function Quest41422:OnSubFinish4142202(arg1)
    print("OnSubFinish4142202")
end

function Quest41422:OnSubFailed4142202(arg1)
    print("OnSubFailed4142202")
end

function Quest41422:OnSubStart4142203(arg1)
    print("OnSubStart4142203")
    self:CreateQuestNpc(arg1, npcs.Npc152901Data.id, 1)
    self:NotifyTo(npcs.Npc1650Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
end

function Quest41422:OnSubFinish4142203(arg1)
    print("OnSubFinish4142203")
    self:SafeDestroyQuestNpc(npcs.Npc165001Data.alias, 3)
    self:NotifyTo(npcs.Npc1650Data.alias, 0, true)
end

function Quest41422:OnSubFailed4142203(arg1)
    print("OnSubFailed4142203")
end

function Quest41422:OnSubStart4142204(arg1)
    print("OnSubStart4142204")
    self:CreateQuestNpc(arg1, npcs.Npc10367Data.id, 1)
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
end

function Quest41422:OnSubFinish4142204(arg1)
    print("OnSubFinish4142204")
    self:NotifyTo(npcs.Npc1529Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc10367Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152901Data.alias, 3)
end

function Quest41422:OnSubFailed4142204(arg1)
    print("OnSubFailed4142204")
end

function Quest41422:OnSubStart4142206(arg1)
    print("OnSubStart4142206")
    self:FinishQuestID(false, 4142206)
    self:FinishQuestID(false, 4142205)
end

function Quest41422:OnSubFinish4142206(arg1)
    print("OnSubFinish4142206")
end

function Quest41422:OnSubFailed4142206(arg1)
    print("OnSubFailed4142206")
end

return Quest41422
