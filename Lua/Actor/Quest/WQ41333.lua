require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41333 = class("Quest41333", QuestActorProxy)
Quest41333.defaultAlias = "Quest41333"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41333:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41333:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4133318"] = self.OnSubStart4133318,
        ["4133301"] = self.OnSubStart4133301,
        ["4133302"] = self.OnSubStart4133302,
        ["4133303"] = self.OnSubStart4133303,
        ["4133304"] = self.OnSubStart4133304,
        ["4133305"] = self.OnSubStart4133305,
        ["4133306"] = self.OnSubStart4133306,
        ["4133307"] = self.OnSubStart4133307,
        ["4133308"] = self.OnSubStart4133308,
        ["4133309"] = self.OnSubStart4133309,
        ["4133310"] = self.OnSubStart4133310,
        ["4133311"] = self.OnSubStart4133311,
        ["4133314"] = self.OnSubStart4133314,
        ["4133312"] = self.OnSubStart4133312,
        ["4133315"] = self.OnSubStart4133315,
        ["4133313"] = self.OnSubStart4133313,
        ["4133316"] = self.OnSubStart4133316,
        ["4133317"] = self.OnSubStart4133317
    }
end

function Quest41333:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4133318"] = self.OnSubFinish4133318,
        ["4133301"] = self.OnSubFinish4133301,
        ["4133302"] = self.OnSubFinish4133302,
        ["4133303"] = self.OnSubFinish4133303,
        ["4133304"] = self.OnSubFinish4133304,
        ["4133305"] = self.OnSubFinish4133305,
        ["4133306"] = self.OnSubFinish4133306,
        ["4133307"] = self.OnSubFinish4133307,
        ["4133308"] = self.OnSubFinish4133308,
        ["4133309"] = self.OnSubFinish4133309,
        ["4133310"] = self.OnSubFinish4133310,
        ["4133311"] = self.OnSubFinish4133311,
        ["4133314"] = self.OnSubFinish4133314,
        ["4133312"] = self.OnSubFinish4133312,
        ["4133315"] = self.OnSubFinish4133315,
        ["4133313"] = self.OnSubFinish4133313,
        ["4133316"] = self.OnSubFinish4133316,
        ["4133317"] = self.OnSubFinish4133317
    }
end

function Quest41333:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4133318"] = self.OnSubFailed4133318,
        ["4133301"] = self.OnSubFailed4133301,
        ["4133302"] = self.OnSubFailed4133302,
        ["4133303"] = self.OnSubFailed4133303,
        ["4133304"] = self.OnSubFailed4133304,
        ["4133305"] = self.OnSubFailed4133305,
        ["4133306"] = self.OnSubFailed4133306,
        ["4133307"] = self.OnSubFailed4133307,
        ["4133308"] = self.OnSubFailed4133308,
        ["4133309"] = self.OnSubFailed4133309,
        ["4133310"] = self.OnSubFailed4133310,
        ["4133311"] = self.OnSubFailed4133311,
        ["4133314"] = self.OnSubFailed4133314,
        ["4133312"] = self.OnSubFailed4133312,
        ["4133315"] = self.OnSubFailed4133315,
        ["4133313"] = self.OnSubFailed4133313,
        ["4133316"] = self.OnSubFailed4133316,
        ["4133317"] = self.OnSubFailed4133317
    }
end

function Quest41333:Start()
    print("Start")
end

function Quest41333:OnDestroy()
    print("OnDestroy")
end

function Quest41333:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41333:OnMainFailed(arg1)
    print("OnMainFailed")
    self:clearData()
end

function Quest41333:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:clearData()
end

function Quest41333:noMeaning()
    print("noMeaning")
end

function Quest41333:hideNPC()
    print("hideNPC")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2419Data.alias, 1, true)
end

function Quest41333:clearData()
    print("clearData")
    self:NotifyTo(npcs.Npc2403Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2419Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc240301Data1.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc241901Data.alias, 3)
end

function Quest41333:deleteTie2()
    print("deleteTie2")
    self:DestroyQuestNpcActorByAlias(npcs.Npc240301Data1.alias, false)
end

function Quest41333:RequestInteractionFangdeng()
    print("RequestInteractionFangdeng")
    self:RequestInteraction(npcs.Npc240301Data1.alias)
end

function Quest41333:fangdeng()
    print("fangdeng")
    self:ActionSafeCall(self.RequestInteractionFangdeng)
end

function Quest41333:OnSubStart4133318(arg1)
    print("OnSubStart4133318")
end

function Quest41333:OnSubFinish4133318(arg1)
    print("OnSubFinish4133318")
end

function Quest41333:OnSubFailed4133318(arg1)
    print("OnSubFailed4133318")
end

function Quest41333:OnSubStart4133301(arg1)
    print("OnSubStart4133301")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc240301Data1.id, 1)
end

function Quest41333:OnSubFinish4133301(arg1)
    print("OnSubFinish4133301")
end

function Quest41333:OnSubFailed4133301(arg1)
    print("OnSubFailed4133301")
end

function Quest41333:OnSubStart4133302(arg1)
    print("OnSubStart4133302")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
end

function Quest41333:OnSubFinish4133302(arg1)
    print("OnSubFinish4133302")
end

function Quest41333:OnSubFailed4133302(arg1)
    print("OnSubFailed4133302")
end

function Quest41333:OnSubStart4133303(arg1)
    print("OnSubStart4133303")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
end

function Quest41333:OnSubFinish4133303(arg1)
    print("OnSubFinish4133303")
    self:NarratorOnlyTask(datas.NarratorTable_AllComplete, nil, "")
end

function Quest41333:OnSubFailed4133303(arg1)
    print("OnSubFailed4133303")
end

function Quest41333:OnSubStart4133304(arg1)
    print("OnSubStart4133304")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
end

function Quest41333:OnSubFinish4133304(arg1)
    print("OnSubFinish4133304")
end

function Quest41333:OnSubFailed4133304(arg1)
    print("OnSubFailed4133304")
end

function Quest41333:OnSubStart4133305(arg1)
    print("OnSubStart4133305")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
end

function Quest41333:OnSubFinish4133305(arg1)
    print("OnSubFinish4133305")
end

function Quest41333:OnSubFailed4133305(arg1)
    print("OnSubFailed4133305")
end

function Quest41333:OnSubStart4133306(arg1)
    print("OnSubStart4133306")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
end

function Quest41333:OnSubFinish4133306(arg1)
    print("OnSubFinish4133306")
end

function Quest41333:OnSubFailed4133306(arg1)
    print("OnSubFailed4133306")
end

function Quest41333:OnSubStart4133307(arg1)
    print("OnSubStart4133307")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
end

function Quest41333:OnSubFinish4133307(arg1)
    print("OnSubFinish4133307")
    self:NotifyTo(npcs.Npc2419Data.alias, 1, true)
    self:DestroyQuestNpcActorByAlias(npcs.Npc241901Data.alias, false)
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
    self:ShowBlackScreen(0.4, 0.6, 0.4, self.deleteTie2, nil, nil, "")
end

function Quest41333:OnSubFailed4133307(arg1)
    print("OnSubFailed4133307")
end

function Quest41333:OnSubStart4133308(arg1)
    print("OnSubStart4133308")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
end

function Quest41333:OnSubFinish4133308(arg1)
    print("OnSubFinish4133308")
    self:ShowBlackScreen(0.4, 0.6, 0.4, self.deleteTie2, nil, nil, "")
end

function Quest41333:OnSubFailed4133308(arg1)
    print("OnSubFailed4133308")
end

function Quest41333:OnSubStart4133309(arg1)
    print("OnSubStart4133309")
    self:CreateQuestNpc(arg1, npcs.Npc241901Data.id, 1)
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2419Data.alias, 1, true)
end

function Quest41333:OnSubFinish4133309(arg1)
    print("OnSubFinish4133309")
    self:SafeDestroyQuestNpc(npcs.Npc240301Data1.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc241901Data.alias, 3)
    self:NotifyTo(npcs.Npc2403Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2419Data.alias, 0, true)
end

function Quest41333:OnSubFailed4133309(arg1)
    print("OnSubFailed4133309")
end

function Quest41333:OnSubStart4133310(arg1)
    print("OnSubStart4133310")
end

function Quest41333:OnSubFinish4133310(arg1)
    print("OnSubFinish4133310")
end

function Quest41333:OnSubFailed4133310(arg1)
    print("OnSubFailed4133310")
end

function Quest41333:OnSubStart4133311(arg1)
    print("OnSubStart4133311")
    self:NotifyTo(npcs.Npc2403Data.alias, 1, true)
end

function Quest41333:OnSubFinish4133311(arg1)
    print("OnSubFinish4133311")
    self:CallDelay(2, self.fangdeng)
end

function Quest41333:OnSubFailed4133311(arg1)
    print("OnSubFailed4133311")
end

function Quest41333:OnSubStart4133314(arg1)
    print("OnSubStart4133314")
end

function Quest41333:OnSubFinish4133314(arg1)
    print("OnSubFinish4133314")
end

function Quest41333:OnSubFailed4133314(arg1)
    print("OnSubFailed4133314")
end

function Quest41333:OnSubStart4133312(arg1)
    print("OnSubStart4133312")
    self:RequestInteraction(npcs.Npc240301Data1.alias)
end

function Quest41333:OnSubFinish4133312(arg1)
    print("OnSubFinish4133312")
end

function Quest41333:OnSubFailed4133312(arg1)
    print("OnSubFailed4133312")
end

function Quest41333:OnSubStart4133315(arg1)
    print("OnSubStart4133315")
end

function Quest41333:OnSubFinish4133315(arg1)
    print("OnSubFinish4133315")
    self:CallDelay(2, self.fangdeng)
end

function Quest41333:OnSubFailed4133315(arg1)
    print("OnSubFailed4133315")
end

function Quest41333:OnSubStart4133313(arg1)
    print("OnSubStart4133313")
end

function Quest41333:OnSubFinish4133313(arg1)
    print("OnSubFinish4133313")
    self:ShowBlackScreen(0.3, 1, 0.3, self.clearData, nil, nil, "")
end

function Quest41333:OnSubFailed4133313(arg1)
    print("OnSubFailed4133313")
end

function Quest41333:OnSubStart4133316(arg1)
    print("OnSubStart4133316")
end

function Quest41333:OnSubFinish4133316(arg1)
    print("OnSubFinish4133316")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_photo1, nil, 41333)
end

function Quest41333:OnSubFailed4133316(arg1)
    print("OnSubFailed4133316")
end

function Quest41333:OnSubStart4133317(arg1)
    print("OnSubStart4133317")
end

function Quest41333:OnSubFinish4133317(arg1)
    print("OnSubFinish4133317")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_photo2, nil, 41333)
end

function Quest41333:OnSubFailed4133317(arg1)
    print("OnSubFailed4133317")
end

return Quest41333
