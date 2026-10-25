require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72233 = class("Quest72233", QuestActorProxy)
Quest72233.defaultAlias = "Quest72233"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72233:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72233:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7223301"] = self.OnSubStart7223301,
        ["7223302"] = self.OnSubStart7223302,
        ["7223303"] = self.OnSubStart7223303,
        ["7223311"] = self.OnSubStart7223311,
        ["7223312"] = self.OnSubStart7223312,
        ["7223304"] = self.OnSubStart7223304,
        ["7223305"] = self.OnSubStart7223305,
        ["7223306"] = self.OnSubStart7223306,
        ["7223307"] = self.OnSubStart7223307,
        ["7223317"] = self.OnSubStart7223317,
        ["7223314"] = self.OnSubStart7223314,
        ["7223315"] = self.OnSubStart7223315,
        ["7223318"] = self.OnSubStart7223318,
        ["7223308"] = self.OnSubStart7223308,
        ["7223316"] = self.OnSubStart7223316,
        ["7223309"] = self.OnSubStart7223309,
        ["7223313"] = self.OnSubStart7223313,
        ["7223310"] = self.OnSubStart7223310
    }
end

function Quest72233:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7223301"] = self.OnSubFinish7223301,
        ["7223302"] = self.OnSubFinish7223302,
        ["7223303"] = self.OnSubFinish7223303,
        ["7223311"] = self.OnSubFinish7223311,
        ["7223312"] = self.OnSubFinish7223312,
        ["7223304"] = self.OnSubFinish7223304,
        ["7223305"] = self.OnSubFinish7223305,
        ["7223306"] = self.OnSubFinish7223306,
        ["7223307"] = self.OnSubFinish7223307,
        ["7223317"] = self.OnSubFinish7223317,
        ["7223314"] = self.OnSubFinish7223314,
        ["7223315"] = self.OnSubFinish7223315,
        ["7223318"] = self.OnSubFinish7223318,
        ["7223308"] = self.OnSubFinish7223308,
        ["7223316"] = self.OnSubFinish7223316,
        ["7223309"] = self.OnSubFinish7223309,
        ["7223313"] = self.OnSubFinish7223313,
        ["7223310"] = self.OnSubFinish7223310
    }
end

function Quest72233:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7223301"] = self.OnSubFailed7223301,
        ["7223302"] = self.OnSubFailed7223302,
        ["7223303"] = self.OnSubFailed7223303,
        ["7223311"] = self.OnSubFailed7223311,
        ["7223312"] = self.OnSubFailed7223312,
        ["7223304"] = self.OnSubFailed7223304,
        ["7223305"] = self.OnSubFailed7223305,
        ["7223306"] = self.OnSubFailed7223306,
        ["7223307"] = self.OnSubFailed7223307,
        ["7223308"] = self.OnSubFailed7223308,
        ["7223309"] = self.OnSubFailed7223309,
        ["7223310"] = self.OnSubFailed7223310
    }
end

function Quest72233:Start()
    print("Start")
end

function Quest72233:OnDestroy()
    print("OnDestroy")
end

function Quest72233:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72233:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72233:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72233:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72233:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72233:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Finish7223311")
        self:FinishQuestID(false, 7223311)
    elseif arg1 == 2 then
        print("Finish7223312")
        self:FinishQuestID(false, 7223312)
    elseif arg1 == 3 then
        print("Finish7223316")
        self:FinishQuestID(false, 7223316)
    end
end

function Quest72233:OnSubStart7223301(arg1)
    print("OnSubStart7223301")
end

function Quest72233:OnSubFinish7223301(arg1)
    print("OnSubFinish7223301")
end

function Quest72233:OnSubFailed7223301(arg1)
    print("OnSubFailed7223301")
end

function Quest72233:OnSubStart7223302(arg1)
    print("OnSubStart7223302")
    self:NotifyTo(npcs.Npc3193Data.alias, 2, true)
    self:NpcCreate(arg1, npcs.Npc3193Data.id, 1)
end

function Quest72233:OnSubFinish7223302(arg1)
    print("OnSubFinish7223302")
end

function Quest72233:OnSubFailed7223302(arg1)
    print("OnSubFailed7223302")
end

function Quest72233:OnSubStart7223303(arg1)
    print("OnSubStart7223303")
    self:NotifyTo(npcs.Npc3193Data.alias, 2, true)
    self:NpcCreate(arg1, npcs.Npc3193Data.id, 1)
end

function Quest72233:OnSubFinish7223303(arg1)
    print("OnSubFinish7223303")
end

function Quest72233:OnSubFailed7223303(arg1)
    print("OnSubFailed7223303")
end

function Quest72233:OnSubStart7223311(arg1)
    print("OnSubStart7223311")
end

function Quest72233:OnSubFinish7223311(arg1)
    print("OnSubFinish7223311")
end

function Quest72233:OnSubFailed7223311(arg1)
    print("OnSubFailed7223311")
end

function Quest72233:OnSubStart7223312(arg1)
    print("OnSubStart7223312")
end

function Quest72233:OnSubFinish7223312(arg1)
    print("OnSubFinish7223312")
end

function Quest72233:OnSubFailed7223312(arg1)
    print("OnSubFailed7223312")
end

function Quest72233:OnSubStart7223304(arg1)
    print("OnSubStart7223304")
    self:NotifyTo(npcs.Npc3193Data.alias, 2, true)
    self:NpcCreate(arg1, npcs.Npc3193Data.id, 1)
end

function Quest72233:OnSubFinish7223304(arg1)
    print("OnSubFinish7223304")
end

function Quest72233:OnSubFailed7223304(arg1)
    print("OnSubFailed7223304")
end

function Quest72233:OnSubStart7223305(arg1)
    print("OnSubStart7223305")
end

function Quest72233:OnSubFinish7223305(arg1)
    print("OnSubFinish7223305")
end

function Quest72233:OnSubFailed7223305(arg1)
    print("OnSubFailed7223305")
end

function Quest72233:OnSubStart7223306(arg1)
    print("OnSubStart7223306")
end

function Quest72233:OnSubFinish7223306(arg1)
    print("OnSubFinish7223306")
end

function Quest72233:OnSubFailed7223306(arg1)
    print("OnSubFailed7223306")
end

function Quest72233:OnSubStart7223307(arg1)
    print("OnSubStart7223307")
end

function Quest72233:OnSubFinish7223307(arg1)
    print("OnSubFinish7223307")
end

function Quest72233:OnSubFailed7223307(arg1)
    print("OnSubFailed7223307")
end

function Quest72233:OnSubStart7223317(arg1)
    print("OnSubStart7223317")
    self:NotifyTo(npcs.Npc3193Data.alias, 2, true)
    self:NpcCreate(arg1, npcs.Npc3193Data.id, 1)
end

function Quest72233:OnSubFinish7223317(arg1)
    print("OnSubFinish7223317")
end

function Quest72233:OnSubStart7223314(arg1)
    print("OnSubStart7223314")
end

function Quest72233:OnSubFinish7223314(arg1)
    print("OnSubFinish7223314")
end

function Quest72233:OnSubStart7223315(arg1)
    print("OnSubStart7223315")
end

function Quest72233:OnSubFinish7223315(arg1)
    print("OnSubFinish7223315")
end

function Quest72233:OnSubStart7223318(arg1)
    print("OnSubStart7223318")
end

function Quest72233:OnSubFinish7223318(arg1)
    print("OnSubFinish7223318")
end

function Quest72233:OnSubStart7223308(arg1)
    print("OnSubStart7223308")
    self:NotifyTo(npcs.Npc3193Data.alias, 2, true)
    self:NpcCreate(arg1, npcs.Npc3193Data.id, 1)
end

function Quest72233:OnSubFinish7223308(arg1)
    print("OnSubFinish7223308")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3193Data.alias)
end

function Quest72233:OnSubFailed7223308(arg1)
    print("OnSubFailed7223308")
end

function Quest72233:OnSubStart7223316(arg1)
    print("OnSubStart7223316")
end

function Quest72233:OnSubFinish7223316(arg1)
    print("OnSubFinish7223316")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7223316", nil, nil, nil, false)
    end)
end

function Quest72233:OnSubStart7223309(arg1)
    print("OnSubStart7223309")
end

function Quest72233:OnSubFinish7223309(arg1)
    print("OnSubFinish7223309")
end

function Quest72233:OnSubFailed7223309(arg1)
    print("OnSubFailed7223309")
end

function Quest72233:OnSubStart7223313(arg1)
    print("OnSubStart7223313")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
    end)
end

function Quest72233:OnSubFinish7223313(arg1)
    print("OnSubFinish7223313")
end

function Quest72233:OnSubStart7223310(arg1)
    print("OnSubStart7223310")
end

function Quest72233:OnSubFinish7223310(arg1)
    print("OnSubFinish7223310")
end

function Quest72233:OnSubFailed7223310(arg1)
    print("OnSubFailed7223310")
end

return Quest72233
